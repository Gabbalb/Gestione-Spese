<?php
require 'vendor/autoload.php';

use Model\UserRepository;

$template = new League\Plates\Engine('templates', 'tpl');

if (isset($_POST['descrizione'])) {
    $descrizione = $_POST['descrizione'];
    $data = $_POST['data'];
    $importo = $_POST['importo'];
    $id_tipo = $_POST['id_tipo'];

    if (\Model\NoteRepository::aggiungiSpesa($descrizione, $data, $importo, $id_tipo)) {
        // Avvia la sessione per memorizzare lo stato di accesso
        session_start();
        //lista = listAll()
        //nel render metti la lista

        echo $template->render('listaAdmin', [
            'descrizione' => $descrizione,
            'data' => $data,
            'importo' => $importo,
            'id_tipo' => $id_tipo
        ]);
        exit(0);
    }
}


if (isset($_GET['action'])){
    $result = UserRepository::verificaCredenziali($_SESSION['username'],$_SESSION['password']);
    $_SESSION['id_permesso'] = $result['id_permesso'];
    if (($_GET['action']) == 'registrazione' AND $_SESSION['id_permesso'] = 1){
        echo $template->render('registrazione', [

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


echo $template->render('listaAdmin', [

]);