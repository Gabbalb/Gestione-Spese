<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <style>
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between; /* Allinea il titolo e i pulsanti ai lati opposti */
            padding: 10px; /* Aggiunge un po' di spazio intorno agli elementi nella header */
        }
        .title {
            flex-grow: 1; /* Fa in modo che il titolo occupi lo spazio disponibile */
        }
        .profile {
            display: flex;
            gap: 10px; /* Distanza tra i pulsanti */
        }
        .btn {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 8px 16px; /* Spazio interno adeguato */
            background-color: #007BFF; /* Colore di sfondo */
            color: white; /* Colore del testo */
            border: none;
            border-radius: 4px; /* Bordi arrotondati */
            cursor: pointer; /* Cambia il cursore in una mano quando ci si passa sopra */
            text-decoration: none; /* Rimuove sottolineature o altre decorazioni */
        }
        .btn:hover {
            background-color: #0056b3; /* Cambia colore al passaggio del mouse */
        }
        .btn svg {
            height: 24px; /* Altezza dell'SVG */
            width: 24px; /* Larghezza dell'SVG */
            fill: #ffffff; /* Colore di riempimento dell'SVG */
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 100px auto;
        }

        h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        form {
            margin-top: 20px;
        }

        input[type="email"],
        input[type="text"],
        input[type="password"],
        select,
        button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        input[type="email"]:focus,
        input[type="text"]:focus,
        input[type="password"]:focus,
        select:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }

        .header {
            background-color: #fff;
            padding: 20px;
            text-align: center;
            position: relative; /* Added for button positioning */
        }

        .header h1 {
            margin: 0;
        }

        .action-buttons {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .action-button {
            background-color: transparent;
            border: none;
            cursor: pointer;
            color: #007bff;
            font-size: 16px;
        }

        .action-button:hover {
            color: #0056b3;
        }

        .error{
            color: red;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>

    </head>
<body>
<div class="header">
    <div class="title">
        <h1>Nota Spese</h1>
    </div>
    <div class="profile">
        <button class="btn btn-action tooltip tooltip-bottom" onclick="location.href='visualizza.php?action=back'" data-tooltip="Back">
            <svg class="h-6 w-6" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg" fill="#ffffff" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path fill="#ffffff" d="M224 480h640a32 32 0 1 1 0 64H224a32 32 0 0 1 0-64z"></path><path fill="#ffffff" d="m237.248 512 265.408 265.344a32 32 0 0 1-45.312 45.312l-288-288a32 32 0 0 1 0-45.312l288-288a32 32 0 1 1 45.312 45.312L237.248 512z"></path></g></svg>
        </button>
        <button class="btn btn-action tooltip tooltip-bottom" onclick="location.href='index.php?action=logout'" data-tooltip="Logout">
            <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M3.75 4.5H5.25V18.75H19.5V20.25H3.75V4.5ZM17.6515 8.25001L15.2196 5.81812L16.2803 4.75746L20.4851 8.96229L16.2803 13.1671L15.2196 12.1065L17.5761 9.75001L14.25 9.75C11.7647 9.75 9.75 11.7647 9.75 14.25V16.5H8.25V14.25C8.25 10.9363 10.9363 8.25 14.25 8.25L17.6515 8.25001Z" fill="#fafeff"></path> </g></svg>
        </button>
    </div>
</div>

<div class="container">
    <h1>Registrazione</h1>
    <form action="registrazione.php" method="post">
        <input type="email" name="email" placeholder="Email">
        <input type="text" name="username" placeholder="Username">
        <input type="password" name="password" placeholder="Password">
        <select name="type">
            <option value="1">Administrator</option>
            <option value="2">Capo Gruppo</option>
            <option value="3">Utente</option>
        </select>
        <div class="error"><?= isset($error) ? $error : '' ?></div>
        <button type="submit" name="register">Aggiungi Utente</button>
    </form>
</div>
</body>
</html>
