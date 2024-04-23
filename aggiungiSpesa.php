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

        echo $template->render('lista', [
            'descrizione' => $descrizione,
            'data' => $data,
            'importo' => $importo,
            'id_tipo' => $id_tipo
        ]);
        exit(0);
    }
}


echo $template->render('AddSpesa', [

]);


