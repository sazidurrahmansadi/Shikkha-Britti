<?php // Code within app\Helpers\Helper.php

namespace App\Helpers;



use App\Models\User;
use Illuminate\Support\Facades\Auth;

class Helper
{

    // if true then the button will be visible
    public static function is_applied_for_scholarship(int $scholarship_id)
    {
        if (Auth::check()) {
            $user = User::find(auth()->user()->id);
            if ($user->hasPermissionTo('apply-scholarship')) {
                $student = $user->student_information;
                if ($student) {
                    $applied_scholarships = $student->scholarships->where('id', $scholarship_id)->count();
                    if (!$applied_scholarships)
                        return true;
                    else
                        return false;
                } else {
                    return true;
                }
            } else if ($user->hasRole('TENANT'))
                return false;
            else {
                return true;
            }
        } else
            return true;
    }

    public static function sendSMS($contracts, $message)
    {
        $url = "https://msg.elitbuzz-bd.com/smsapi";
        $data = [
            "api_key" => "C2008095618587fd616629.30891805",
            "type" => "text",
            "contacts" => $contracts,
            "senderid" => "8809612436577",
            "msg" => $message,
        ];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }


    const API_TOKEN = "hf5ldhb6-lqylljfg-gopriech-r1ooxglz-su0oqrxn"; //put ssl provided api_token here
    const SID = "IMPULSENONOTP"; // put ssl provided sid here
    const DOMAIN = "https://smsplus.sslwireless.com"; //api domain
    const ERROR_CODE = ['200' => 'SMS has been sent successfully', '4025' => 'Invalid Phone Number', '4003' => 'IP Blacklisted'];
    const STATUS_TYPE = ['SUCCESS', 'FAILED'];


    public static function singleSms($number, $messageBody)
    {
        $number = self::trim_phone_number($number);
        $params = [
            "api_token" => Helper::API_TOKEN,
            "sid" => Helper::SID,
            "msisdn" => $number,
            "sms" => $messageBody,
            "csms_id" => self::generate_csms_id()
        ];
        $url = trim(Helper::DOMAIN, '/') . "/api/v3/send-sms";

        $response = self::callApi($url, $params);
        return $response;
    }


    public static function bulkSms($numbers, $messageBody)
    {
        $numbers = self::trim_phone_number($numbers);
        $params = [
            "api_token" => Helper::API_TOKEN,
            "sid" => Helper::SID,
            "msisdn" => $numbers,
            "sms" => $messageBody,
            "batch_csms_id" => self::generate_csms_id()
        ];
        $url = trim(Helper::DOMAIN, '/') . "/api/v3/send-sms/bulk";


        $response = self::callApi($url, $params);
        return $response;
    }




    public static function beautify_response($response)
    {

        $response = json_decode($response);

        if (!array_key_exists($response->status_code, self::ERROR_CODE)) {
            $formatted_response = [
                'status' => self::STATUS_TYPE[1],
                'message' => 'Cannot send sms ! Please try again later'
            ];
        } else {
            $formatted_response = [
                'status' => $response->status,
                'message' => self::ERROR_CODE[$response->status_code]
            ];
        }



        return $formatted_response;
    }

    private static function generate_csms_id()
    {
        return rand();
    }

    public static function callApi($url, $params)
    {
        $params = json_encode($params);

        $ch = curl_init(); // Initialize cURL
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'Content-Length: ' . strlen($params),
            'accept:application/json'
        ));

        $response = curl_exec($ch);

        curl_close($ch);
        return self::beautify_response($response);
    }


    public static function trim_phone_number($numbers)
    {
        if (!is_array($numbers)) {
            return preg_replace("/[^0-9]/", "", $numbers);
        } else {
            $filtered_number = [];
            foreach ($numbers as $number) {
                $only_numeric = preg_replace("/[^0-9]/", "", $number);
                array_push($filtered_number, $only_numeric);
            }
            return $filtered_number;
        }
    }
}
