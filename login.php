<?php

session_start();
require_once './classes/User.php';
require_once './classes/DbConnector.php';

use classes\User;
use classes\DbConnector;

if (isset($_POST["username"], $_POST["password"])) {
    if (empty($_POST["username"]) || empty($_POST["password"])) {
        $location = "Logingpage.php?status=1";
    } else {
        $username = filter_var($_POST["username"], FILTER_SANITIZE_STRING);
        $password = filter_var($_POST["password"], FILTER_SANITIZE_STRING);
        $user = new User(null, null, $username, $password, null);
        if ($user->authenticate(DbConnector::getConnection())) {
            $_SESSION["user_id"] = $user->getId();
            $_SESSION["user_firstname"] = $user->getFirstName();
            $_SESSION["user_lastname"] = $user->getLastName();
            if ($user->getRole() == "admin") {
                header("Location: AdminDashboard.php"); // Redirect to admin page
            } else {
                header("Location: HomeU.php"); // Redirect to user home page
            }
        } else {
            $location = "Logingpage.php?status=2";
        }
        exit();
    }
} else {
    $location = "Logingpage.php?status=0";
}
header("Location:" . $location);
