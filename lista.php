<?php
require 'vendor/autoload.php';

use Model\UserRepository;

$template = new League\Plates\Engine('templates', 'tpl');

if (isset($_POST['descrizione'])) {
    $descrizione = $_POST['descrizione'];
    $data= $_POST['data'];
    $importo = $_POST['importo'];
    $id_tipo = $_POST['id_tipo'];



if (isset($_GET['action'])){
    if (($_GET['action']) == 'logout'){
        UserRepository::logout();
        echo $template->render('login', [

        ]);
        exit(0);
    }
}

echo $template->render('lista', [

]);