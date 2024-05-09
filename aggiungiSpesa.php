<?php
require 'vendor/autoload.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

use Model\UserRepository;

$template = new League\Plates\Engine('templates', 'tpl');

session_start();

// Controllo se l'utente è loggato, altrimenti reindirizzo alla pagina di login
if (!isset($_SESSION['username'])) {
    header('Location: login.php');
    exit();
}

// Aggiungi una nuova tipologia se è stata inviata
if (isset($_POST['newtipologia'])) {
    \Model\TipologiaRepository::aggiungiTipologia($_POST['newtipologia']);
}

// Se è stato inviato il modulo per l'aggiunta di una spesa
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['descrizione'])) {
    try {
        $username = $_SESSION['username'];
        $descrizione = $_POST['descrizione'];
        $data = $_POST['data'];
        $importo = $_POST['importo'];
        $id_tipo = $_POST['tipologia'];

        // Ottieni l'ID dell'utente dal repository degli utenti
        $id = \Model\UserRepository::getID($username);

        // Aggiungi la spesa
        \Model\NoteRepository::aggiungiSpesa($descrizione, $data, $importo, $id, $id_tipo);

        // Redirect alla pagina lista dopo l'aggiunta della spesa
        header('Location: lista.php');
        exit();
    } catch (Exception $e) {
        // Gestisci eventuali errori
        echo "Si è verificato un errore durante l'aggiunta della spesa: " . $e->getMessage();
        exit();
    }
}

// Se non è stato inviato il modulo, mostra la pagina di aggiunta spesa
$username = $_SESSION['username'];
$tipologie = \Model\TipologiaRepository::listAll();

echo $template->render('AddSpesa', [
    'username' => $username,
    'tipologie' => $tipologie
]);
