<?php
require 'vendor/autoload.php';

use Model\UserRepository;

session_start();

$template = new League\Plates\Engine('templates', 'tpl');

$username = $_SESSION['username'];
$id = UserRepository::getID($username);

// Gestione delle azioni
if (isset($_GET['action'])) {
    $action = $_GET['action'];

    if ($action === 'back') {
        // Se l'azione è 'back', torna alla pagina precedente
        header('Location: lista.php');
        exit();
    } elseif ($action === 'logout') {
        // Se l'azione è 'logout', esegui il logout e reindirizza alla pagina di login
        UserRepository::logout();
        header('Location: login.php');
        exit();
    } elseif ($action === 'delete' && isset($_GET['id'])) {
        // Se l'azione è 'delete' e c'è un ID specificato, rimuovi la spesa
        $idSpesa = $_GET['id'];
        \Model\NoteRepository::rimuoviSpesa($idSpesa);
        // Dopo aver eliminato la spesa, reindirizza alla pagina corrente per evitare il ri-invio del modulo
        header('Location: lista.php');
        exit();
    } elseif ($action === 'modify' && isset($_GET['id'])) {

    }
}

// Carica le spese precedenti solo se necessario
$spesePrec = null;
if (!isset($_GET['action']) || $_GET['action'] !== 'back') {
    $spesePrec = \Model\NoteRepository::getSpeseByIdUtente($id);
}

// Passa le variabili al template per il rendering
echo $template->render('lista', [
    'username' => $username,
    'spesePrec' => $spesePrec
]);
