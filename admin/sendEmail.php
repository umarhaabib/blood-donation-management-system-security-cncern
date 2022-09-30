<?php
session_start();
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
function sendEmail(){

    

       
require '../assets/mail/vendor/autoload.php';
$to_email = $_SESSION['loggeninuseremail'];

$mail = new PHPMailer(false);
//Server settings
$mail->SMTPDebug = false;                      //Enable verbose debug output
$mail->isSMTP();                                            //Send using SMTP
$mail->Host       = 'caveoclient.com';                     //Set the SMTP server to send through
$mail->SMTPAuth   = true;                                   //Enable SMTP authentication
$mail->Username   = 'test@caveoclient.com';                     //SMTP username
$mail->Password   = '}Y,Hd}Bo#r]%';                               //SMTP password
$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
$mail->Port       = 465;



$mail->setFrom('blooddonations@gmail.com',  'Blood Donations');
$mail->addAddress($to_email, 'Mailer');
$mail->isHTML(true);                                  //Set email format to HTML
//$mail->addAttachment($attachment);         //Add attachments

$subject = "Thank you for donating your blood";
$mail->Subject = $subject;

$txt = '<html>' .
  '<head>' .
  '<title>' . $subject . '</title>' .
  '</head>' .
  '<body>' .
  '<h1>' . $subject . '</h1>' .
  '<p>You are the champion in our corner, helping us achieve incredible things. There is no alternative to blood. Without donations from selfless people like you, we wouldn’t stand a chance. To say we appreciate your efforts would be the understatement of the century. We sincerely hope you will be donating again in the future.</p>' .
  '</body>' .
  '</html>';
$mail->Body    = $txt;
$mail->send();

if (false) {
  echo 'Message could not be sent.';
  echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {

    echo 'A thanks email has been sent to your registered email address.';

  


}
}