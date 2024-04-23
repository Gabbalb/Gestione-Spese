<?php

namespace Model;
use Util\Connection;

class NoteRepository
{
    public static function aggiungiSpesa($descrizione, $data, $importo):
    {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO note(descrizione, data, importo) 
            VALUES (:descrizione, :data, :importo)';
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':descrizione' => $descrizione,
            ':data' => $data,
            ':importo' => $importo

        ]);
    }

}