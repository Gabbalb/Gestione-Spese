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
 /*   public static function verificaCredenziali($username, $password): bool
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT password, username, id_permesso
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
*/

    public static function verificaCredenziali($username, $password): array
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT password, username, id_permesso
            FROM users 
            WHERE username = :username';
        $stmt = $pdo->prepare($sql);
        $stmt->execute(['username' => $username]);
        $result = $stmt->fetch();

        // Inizializza il valore di default per id_permesso
        $idPermesso = null;

        // Se non viene trovato alcun utente con lo username fornito
        if (!$result) {
            return ['success' => false, 'id_permesso' => $idPermesso];
        }

        // Verifica se la password fornita corrisponde all'hash memorizzato nel database
        if (password_verify($password, $result['password'])) {
            // Assegna id_permesso se la password è corretta
            $idPermesso = $result['id_permesso'];
            return ['success' => true, 'id_permesso' => $idPermesso];
        } else {
            return ['success' => false, 'id_permesso' => $idPermesso];
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
