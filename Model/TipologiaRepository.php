<?php

namespace Model;
use Util\Connection;

class TipologiaRepository
{

    /**
     * Aggiunge una nuova tipologia al database.
     *
     * @param string $nome Il nome della nuova tipologia da aggiungere.
     * @throws Exception Se si verifica un errore durante l'inserimento.
     */
    public static function aggiungiTipologia($nome): void
    {
        try {
            $pdo = Connection::getInstance();

            // Preparazione della query SQL per inserire una nuova tipologia
            $sql = 'INSERT INTO gestionespese.tipologia (nome)
                    VALUES (:nome)';
            $stmt = $pdo->prepare($sql);

            // Esecuzione della query con il parametro 'nome'
            $stmt->execute(['nome' => $nome]);
        } catch (PDOException $e) {
            // Gestione degli errori di PDO
            error_log("Errore durante l'esecuzione della query: " . $e->getMessage());
            throw new Exception("Errore durante l'inserimento della tipologia: " . $e->getMessage());
        } catch (Exception $e) {
            // Gestione degli altri tipi di errori
            error_log("Errore: " . $e->getMessage());
            throw $e;
        }
    }


    public static function listAll(): array
    {
        try {
            $pdo = Connection::getInstance();
            $sql = 'SELECT nome, id FROM gestionespese.tipologia'; // Assicurati che il nome della colonna sia corretto
            $stmt = $pdo->prepare($sql);
            $stmt->execute([

            ]);
            return $stmt->fetchAll(); // Utilizza PDO::FETCH_ASSOC per ottenere solo un array associativo
        } catch (PDOException $e) {
            // Gestione degli errori, ad esempio loggare l'errore e restituire un array vuoto
            error_log("Errore durante il recupero delle spese dell'utente: " . $e->getMessage());
            return []; // Restituisce un array vuoto in caso di errore
        }
    }


}