<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #f5f5f5;
            padding: 10px 20px;
        }
        .navbar h1 {
            margin: 0;
            font-size: 24px;
        }
        .profile {
            display: flex;
            align-items: center;
        }
        .profile h3 {
            margin-right: 20px;
            font-size: 18px;
            color: #333;
        }
        .container {
            padding: 20px;
        }
        .table-wrapper {
            margin-top: 20px;
        }
        .btn-add-row {
            position: fixed;
            right: 20px;
            bottom: 20px;
            cursor: pointer;
            z-index: 1000; /* ensures the button stays on top of other content */
        }

    </style>
</head>
<body>
<div class="navbar">
    <div class="title">
        <h1>Nota Spese</h1>
    </div>
    <div class="profile">
        <h3>Ciao <?=$username?></h3>
        <button class="btn btn-action tooltip tooltip-bottom" data-tooltip="Logout">
            <a href="index.php?action=logout">
                <i class="icon icon-share"></i>
            </a>
        </button>
    </div>
</div>
<div class="container">
    <div class="table-wrapper">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>Descrizione</th>
                <th>Data</th>
                <th>Importo</th>
                <th>Tipo</th>
            </tr>
            </thead>
            <tbody id="table-body">

            <!-- Nuove spese aggiunte -->
            <?php if(isset($spese) && is_array($spese) && count($spese) > 0): ?>
            <?php foreach ($spese as $s): ?>
            <tr>
                <td></td>
                <td><?= $s['descrizione'] ?></td>
                <td><?= $s['date'] ?></td>
                <td><?= $s['importo'] ?></td>
                <td><?= $s['Id_tipo'] ?></td>
            </tr>
            <?php endforeach; ?>
            <?php else: ?>
            <tr>
                <td colspan="5">Nessuna spesa disponibile.</td>
            </tr>
            <?php endif; ?>
            </tbody>
        </table>
        <p><a href="aggiungiSpesa.php">Aggiungi spesa</a></p>
    </div>
</div>


</body>
</html>
