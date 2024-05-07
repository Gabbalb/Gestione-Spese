<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <title>Nota Spese</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h1 {
            margin: 0;
        }

        .profile {
            display: flex;
            align-items: center;
        }

        .profile a {
            color: #fff;
            text-decoration: none;
            padding: 0.25rem 0.5rem;
            border: none;
            background: transparent;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .table-container {
            overflow-x: auto;
            max-width: calc(100vw - 40px); /* Sottrae il padding del contenitore */
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table th,
        .table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .table th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="container">
        <h1>Nota Spese</h1>
    </div>
    <div class="profile">
        <div class="container">
            <a href="index.php" class="btn btn-action tooltip tooltip-bottom" data-tooltip="Logout">
                <i class="icon icon-share"></i> Logout
            </a>
        </div>
    </div>
</div>
<div class="container table-container">
    <table class="table">
        <thead>
        <tr>
            <?php foreach ($headers as $head): ?>
            <th><?= $head ?></th>
            <?php endforeach; ?>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($results as $result): ?>
        <tr>
            <?php for ($i = 0; $i < sizeof($result) / 2; $i++): ?>
            <td><?= $result[$i] ?></td>
            <?php endfor; ?>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
<p><-- <a href="listaAdmin.php?action=back">Torna alla lista</a></p>
</body>
</html>
