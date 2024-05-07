<?php
require 'vendor/autoload.php';

use Model\UserRepository;

$template = new League\Plates\Engine('templates', 'tpl');


// Avvia la sessione per memorizzare lo stato di accesso
session_start();

// Assicurarsi che l'utente sia loggato prima di procedere
if (!isset($_SESSION['username'])) {
    echo $template->render('login', [
        // Redirect verso la pagina di login se non loggato
    ]);
    exit(0);
}

if (isset($_POST['descrizione'])) {
    $descrizione = $_POST['descrizione'];
    $data = $_POST['data'];
    $importo = $_POST['importo'];
    $id_tipo = $_POST['tipologia'];
    $username = $_SESSION['username'];

    // Ottiene l'ID dell'utente dal repository degli utenti
    $id = \Model\UserRepository::getID($username);

    if ($id === null) {
        // Gestisci l'errore se l'ID non viene trovato
        echo "Errore: utente non trovato.";
        exit;
    }

    // Aggiunge la spesa utilizzando l'ID dell'utente
    \Model\NoteRepository::aggiungiSpesa($descrizione, $data, $importo, $id, $id_tipo);

    // Recupera tutte le spese dell'utente
    $spese = \Model\NoteRepository::listAll($id);

    if ($spese != false) {
        // Assumendo che $template sia un oggetto di un motore di template come Twig
        echo $template->render('lista', [
            'spese' => $spese,
            'username' => $username
        ]);
    } else {
        echo "Nessuna spesa trovata.";
    }
    exit;
} else{
    $username = $_SESSION['username'];
    echo $template->render('AddSpesa', [
        'username' => $username
    ]);
}



