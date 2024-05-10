<?php
require 'vendor/autoload.php';
require_once 'conf/config.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$template = new \League\Plates\Engine('templates', 'tpl');

session_start();

$nusers = \Model\NoteRepository::nusers();
$nnote = \Model\NoteRepository::nnote();
$totspese = \Model\NoteRepository::totspese();

$username = $_SESSION['username'];



// Check if there's a specific action to perform
if (isset($_GET['action']) && $_GET['action'] == 'back') {
    // Render the listaAdmin template when action is 'back'
    echo $template->render('listaAdmin', [
        'username' => $username,
        'nusers' => $nusers,
        'nnote' => $nnote,
        'totspese' => $totspese

    ]);
    exit(0);  // Exit after rendering to stop further script execution
}


if (isset($_GET['query'])){
    $results = null;
    $headers = null;
    switch ($_GET['query']){
        case 1:
            $headers = ['id', 'username', 'mail', 'livello permessi', 'elimina' ];
                    $results = \Model\NoteRepository::query1();
            break;
        case 2:
            $headers = ['id', 'escrizione', 'data', 'importo', 'utente', 'tipologia'];
            $results = \Model\NoteRepository::query2();
            break;
    }
    if (!is_null($results))
        $utenti = \Model\UserRepository::listAll();
        echo $template->render('table', [
            'results'=>$results,
            'headers'=>$headers,
            'utenti'=>$utenti

        ]);

}else
    echo $template->render('404');

