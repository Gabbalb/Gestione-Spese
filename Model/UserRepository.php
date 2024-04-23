<?php

namespace Model;
use Util\Connection;

class UserRepository
{

    private static function start()
    {
        if (session_id() == "")
            session_start();
    }
    public static function verificaCredenziali($username, $password): bool
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT password, username
            FROM users 
            WHERE username = :username';
        $stmt = $pdo->prepare($sql);
        $stmt->execute(['username' => $username]);
        $result = $stmt->fetch();

        // Se non viene trovato alcun utente con lo username fornito
        if (!$result) {
            return false;
        }

        // Verifica se la password fornita corrisponde all'hash memorizzato nel database
        if (password_verify($password, $result['password'])) {
            return true;
        } else {
            return false;
        }
    }



    public static function registrazione($email, $username, $password, $type)
    {
        $pdo = Connection::getInstance();
        $sql = 'INSERT INTO users(username, password, mail, id_permesso) 
            VALUES (:username, :password, :email, :type)';
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':email' => $email,
            ':username' => $username,
            ':password' => $password,
            ':type' => $type

        ]);

    }

    public static function logout()
    {
        self::start();
        //Distrugge la sessione per evitare che parti successive del codice
        //nello stesso script la utilizzino
        $_SESSION = [];
        //Distrugge la sessione sul server
        session_destroy();
    }




}
