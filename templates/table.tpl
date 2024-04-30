<!DOCTYPE html>
<html data-theme="light">
<head>
    <meta charset="UTF-8">
    <title>World</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>


    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">
</head>
<body>
<div class="navbar">
    <div class="title">
        <h1>Nota Spese</h1>
    </div>
    <div class="profile">
        <a href="index.php"><button class="btn btn-action tooltip tooltip-bottom" data-tooltip="Logout">

                <i class="icon icon-share"></i>

        </button></a>
    </div>
</div>
<div class="overflow-x-auto">
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
</body>
</html>