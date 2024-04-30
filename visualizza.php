<?php
require 'vendor/autoload.php';
require_once 'conf/config.php';

$template = new \League\Plates\Engine('templates', 'tpl');

if (isset($_GET['query'])){
    $results = null;
    $headers = null;
    switch ($_GET['query']){
        case 1:
            $headers = ['id', 'username', 'mail', 'password', 'livello permessi' ];
                    $results = \Model\NoteRepository::query1();
            break;
        case 2:
            $headers = ['Stati'];
            $results = \Model\NoteRepository::query2();
            break;
    }
    if (!is_null($results))
        echo $template->render('table', [
            'results'=>$results,
            'headers'=>$headers
        ]);
}else
    echo $template->render('listaAdmin');