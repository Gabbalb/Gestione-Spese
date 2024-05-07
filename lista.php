<?php
require 'vendor/autoload.php';

use Model\UserRepository;

session_start();

$template = new League\Plates\Engine('templates', 'tpl');

$username = $_SESSION['username'];
$id = UserRepository::getID($username);
$spesePrec = \Model\NoteRepository::getSpeseByIdUtente($id);

if (isset($_GET['action'])){
    if (($_GET['action']) == 'back'){
        echo $template->render('lista', [
            'username' => $username,
            'spesePrec' => $spesePrec

        ]);
        exit(0);
    }
} else{
    if (($_GET['action']) == 'logout'){
        UserRepository::logout();
        echo $template->render('login', [

        ]);
        exit(0);
    }
}

echo $template->render('lista', [
   'username' => $username
]);
