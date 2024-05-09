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

        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
            align-items: center;
            justify-content: center;
            z-index: 9999; /* Assicura che il modal sia sopra gli altri elementi */
        }

        .modal-content {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            z-index: 10000; /* Assicura che il contenuto del modal sia sopra gli altri elementi */
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
                <th>Descrizione</th>
                <th>Data</th>
                <th>Importo</th>
                <th>Tipo</th>
                <th>Elimina</th>
                <th>Modifica</th>
            </tr>
            </thead>
            <tbody id="table-body">
            <?php if (isset($spesePrec) && is_array($spesePrec) && count($spesePrec) > 0): ?>
            <?php foreach ($spesePrec as $s): ?>
            <tr>
                <td><?= $s['descrizione'] ?></td>
                <td><?= $s['date'] ?></td>
                <td><?= $s['importo'] ?></td>
                <td><?= $s['Id_tipo'] ?></td>
                <td><p><a href="lista.php?action=delete&id=<?= $s['id'] ?>">Elimina</p></td>
                <td><button class="btn btn-link" onclick="openModal('<?= $s['id'] ?>', '<?= $s['descrizione'] ?>', '<?= $s['date'] ?>', '<?= $s['importo'] ?>', '<?= $s['Id_tipo'] ?>')">Modifica</button></td>
            </tr>
            <?php endforeach; ?>
            <?php endif; ?>



            <?php if (isset($spese) && is_array($spese) && count($spese) > 0): ?>
            <?php foreach ($spese as $s): ?>
            <tr>
                <td><?= $s['descrizione'] ?></td>
                <td><?= $s['date'] ?></td>
                <td><?= $s['importo'] ?></td>
                <td><?= $s['Id_tipo'] ?></td>
                <td><a href="lista.php?action=delete&id=<?= $s['id'] ?>">Elimina</a></td>
                <td><button class="btn btn-link" onclick="openModal('<?= $s['id'] ?>', '<?= $s['descrizione'] ?>', '<?= $s['date'] ?>', '<?= $s['importo'] ?>', '<?= $s['Id_tipo'] ?>')">Modifica</button></td>
            </tr>
            <?php endforeach; ?>
            <?php endif; ?>

            </tbody>
        </table>

        <div id="modal" class="modal">
            <div class="modal-content">
                <h2>Modifica Spesa</h2>
                <form id="edit-form" method="post">
                    <div class="form-group">
                        <label for="descrizione">Descrizione della spesa</label>
                        <input type="text" class="form-input" id="descrizione" name="descrizione" required>
                    </div>
                    <div class="form-group">
                        <label for="data">Data</label>
                        <input type="date" class="form-input" id="data" name="data" required>
                    </div>
                    <div class="form-group">
                        <label for="importo">Importo (€)</label>
                        <input type="number" class="form-input" id="importo" name="importo" required step="0.01">
                    </div>
                    <div class="form-group">
                        <label for="tipologia">Tipologia della spesa</label>
                        <select class="form-select" id="tipologia" name="tipologia">
                            <?php if (isset($tipologie) && is_array($tipologie) && count($tipologie) > 0): ?>
                            <?php foreach ($tipologie as $tipologia): ?>
                            <option><?= $tipologia['nome'] ?></option>
                            <?php endforeach; ?>
                            <?php endif; ?>
                            <!-- Opzioni della dropdown caricate dal database -->
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Salva Modifiche</button>
                    <button type="button" class="btn" onclick="closeModal()">Annulla</button>
                </form>
            </div>
        </div>

        <p><a href="aggiungiSpesa.php">Aggiungi spesa</a></p>
    </div>
</div>


<script>
    function openModal(id, descrizione, data, importo, tipologia) {
        document.getElementById("descrizione").value = descrizione;
        document.getElementById("data").value = data;
        document.getElementById("importo").value = importo;
        document.getElementById("tipologia").value = tipologia;
        document.getElementById("edit-form").action = "edit.php?id=" + id; // Sostituisci 'edit.php' con il percorso dello script per la modifica della spesa
        document.getElementById("modal").style.display = "flex";
    }

    function closeModal() {
        document.getElementById("modal").style.display = "none";
    }
</script>

</body>
</html>
