<?php

namespace Model;
use Util\Connection;

class NoteRepository
{
    public static function aggiungiSpesa($descrizione, $data, $importo, $id_tipo)
    {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO note(descrizione, data, importo, id_tipo) 
            VALUES (:descrizione, :data, :importo, :id_tipo)';
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':descrizione' => $descrizione,
            ':data' => $data,
            ':importo' => $importo,
            ':id_tipo' => $id_tipo

        ]);
    }

    public static function listAll($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM note WHERE id_user = :id_user';
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':id_tipo' => $id
        ]);
        return $stmt->fetchAll();

    }

    public static function query1()
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM users;';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function query2(){
        $pdo = Connection::getInstance();
        $sql = 'SELECT * FROM note';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
}