<?php
require 'vendor/autoload.php';

use Model\UserRepository;

$template = new League\Plates\Engine('templates', 'tpl');


if (isset($_GET['action'])) {
    if (($_GET['action']) == 'logout') {
        UserRepository::logout();
        echo $template->render('login', [

        ]);
        exit(0);
    }
}

