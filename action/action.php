<?php
error_reporting(-1);
header("Access-Control-Allow-Origin: *");
if (session_status() === PHP_SESSION_NONE) { session_start(); }

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $errorMsg = $successMsg = "";
    $errorStatus = $successStatus = false;
    $_POST = json_decode(file_get_contents('php://input'), true);
    if ($_POST['action'] == 'send') {
        /* print_r($_POST);
        die(); */
        sleep(2);
        $name = $_POST['name'];
        $email = $_POST['email'];
        $subject = $_POST['subject'];
        $message = $_POST['message'];

        if (!empty($name) && !empty($email) && !empty($subject) && !empty($message)) {
            $header = "From:tulbadex@gmail.com \r\n";
            $header .= "MIME-Version: 1.0\r\n";
            $header .= "Content-type: text/html\r\n";

            // mail ($email,$subject,$message,$header);
            echo json_encode(array('msg' => 'success'));
            die();
            
        }
    }
}