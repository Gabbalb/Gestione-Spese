<?php
require 'vendor/autoload.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

use Model\UserRepository;

$template = new League\Plates\Engine('templates', 'tpl');

$error = ''; // Variabile per il messaggio di errore

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['email'])) {
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $type = $_POST['type'];

    // Controlla se tutti i campi sono compilati
    if (empty($email) || empty($username) || empty($password) || empty($type)) {
        $error = 'Compilare tutti i campi';
    } else {
        $password = password_hash($password, PASSWORD_DEFAULT);

        // Esegui la registrazione
        UserRepository::registrazione($email, $username, $password, $type);

        // Reindirizza alla pagina di successo
        echo $template->render('login', []);
        exit(0); // Assicura che lo script termini dopo il reindirizzamento
    }
}

echo $template->render('registrazione', [
    'error' => $error // Passa il messaggio di errore al template
]);
