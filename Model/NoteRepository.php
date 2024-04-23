<?php

namespace Model;
use Util\Connection;

class NoteRepository
{
    public static function aggiungiSpesa($descrizione, $data, $importo, $id_tipo):
    {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO note(descrizione, data, importo, id_tipo) 
            VALUES (:descrizione, :data, :importo, :id_tipo)';
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':descrizione' => $descrizione,
            ':data' => $data,
            ':importo' => $importo

        ]);
    }

}