<?php
require 'vendor/autoload.php';

use Model\UserRepository;

$template = new League\Plates\Engine('templates', 'tpl');



if (isset($_GET['action'])){
    $result = UserRepository::verificaCredenziali($_SESSION['username'],$_SESSION['password']);
    $id_permesso = $_SESSION['id_permesso'];
    if (($_GET['action']) == 'registrazione' AND $id_permesso = 1){
        echo $template->render('registrazione', [

        ]);
        exit(0);
    }
} else if (($_GET['action']) == 'logout'){
        UserRepository::logout();
        echo $template->render('login', [

        ]);
        exit(0);

}
