<!--<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aggiungi Spesa</title>

    <script src="https://cdn.tailwindcss.com"></script>
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
        .form-wrapper {
            margin-top: 20px;
        }
        /* CSS per il modal */
        .modal {
            display: none;
            position: fixed;
            z-index: 9999;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5); /* Sfondo semi-trasparente */
        }
        .modal.active {
            display: block;
        }
        .modal-container {
            background-color: #fff;
            margin: 10% auto;
            padding: 20px;
            border-radius: 5px;
            max-width: 80%; /* Larghezza massima del modal */
        }
        .modal-title {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .modal-body {
            padding-bottom: 20px;
        }
        .modal-footer {
            text-align: right;
        }
        .modal-footer .btn {
            margin-left: 10px;
        }
        /* CSS per rendere il modal responsive */
        @media screen and (max-width: 768px) {
            .modal-container {
                max-width: 90%; /* Riduci la larghezza massima del modal su schermi più piccoli */
            }
        }


    </style>
</head>
<body>
<div class="navbar">
    <div class="title">
        <h1>Aggiungi Spesa</h1>
    </div>
    <div class="profile">
        <h3>Ciao <?= $username ?></h3>
        <button class="btn btn-action tooltip tooltip-bottom" data-tooltip="Logout">
            <a href="index.php?action=logout">
                <i class="icon icon-share"></i>
            </a>
        </button>
    </div>
</div>
<div class="container">
    <div class="form-wrapper">
        <form method="post">
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
                    <option value="<?= $tipologia['id'] ?>"><?= $tipologia['nome'] ?></option>
                    <?php endforeach; ?>
                    <?php endif; ?>

                </select>
            </div>
            <button type="submit" class="btn btn-primary">Aggiungi Spesa</button>
        </form>
        <button type="button" class="btn btn-link" onclick="openModal()">Aggiungi Tipologia</button>
       Modal per Aggiungi Tipologia
        <div id="modalTipologia" class="modal">
            <div class="modal-container">
                <div class="modal-header">
                    <div class="modal-title">Aggiungi Nuova Tipologia</div>
                </div>
                <div class="modal-body">
                    <div class="content">
                         Contenuto del modal
                        <form method="post">
                            <input type="text" class="form-input" id="new" name="newtipologia" required
                                   placeholder="Inserisci una tipologia di spesa">
                            <br>
                            <button type="submit" class="btn btn-primary">Aggiungi tipologia</button>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn" onclick="closeModal()">Chiudi</button>
                </div>
            </div>
        </div>
        <p><a href="lista.php?action=back">Torna alla lista</a></p>
    </div>
</div>

<script>
    function openModal() {
        document.getElementById('modalTipologia').classList.add('active');
    }

    function closeModal() {
        document.getElementById('modalTipologia').classList.remove('active');
    }

    document.querySelector('.btn-link').addEventListener('click', openModal);
</script>

</body>
</html> -->

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aggiungi Spesa</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">
</head>
<body class="bg-gray-100 font-sans">
<div class="flex justify-between items-center p-5 bg-white shadow">
    <h1 class="text-gray-800 font-bold text-xl">Aggiungi Spesa</h1>
    <div class="flex items-center">
        <h3 class="text-gray-600 mr-4">Ciao <?= $username ?></h3>
        <a href="index.php?action=logout" class="flex items-center justify-center w-8 h-8 text-white bg-blue-500 rounded hover:bg-blue-600">
            <i class="icon icon-share"></i>
        </a>
    </div>
</div>
<div class="container mx-auto p-6 bg-white shadow-md rounded-md mt-5">
    <form method="post">
        <div class="mb-4">
            <label for="descrizione" class="block text-gray-700 text-sm font-bold mb-2">Descrizione della spesa</label>
            <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="descrizione" name="descrizione" required>
        </div>
        <div class="mb-4">
            <label for="data" class="block text-gray-700 text-sm font-bold mb-2">Data</label>
            <input type="date" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="data" name="data" required>
        </div>
        <div class="mb-4">
            <label for="importo" class="block text-gray-700 text-sm font-bold mb-2">Importo (€)</label>
            <input type="number" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="importo" name="importo" required step="0.01">
        </div>
        <div class="mb-4">
            <label for="tipologia" class="block text-gray-700 text-sm font-bold mb-2">Tipologia della spesa</label>
            <select class="block appearance-none w-full bg-white border border-gray-300 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="tipologia" name="tipologia">
                <?php if (isset($tipologie) && is_array($tipologie) && count($tipologie) > 0): ?>
                <?php foreach ($tipologie as $tipologia): ?>
                <option value="<?= $tipologia['id'] ?>"><?= $tipologia['nome'] ?></option>
                <?php endforeach; ?>
                <?php endif; ?>
            </select>
        </div>
        <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Aggiungi Spesa</button>
    </form>
    <button type="button" class="mt-4 inline-block bg-transparent text-blue-500 font-semibold hover:text-blue-800 py-2 px-4 border border-blue-500 hover:border-transparent rounded" onclick="openModal()">Aggiungi Tipologia</button>
    <!-- Modal per Aggiungi Tipologia -->
    <div id="modalTipologia" class="fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center hidden">
        <div class="bg-white p-8 rounded-lg shadow-lg max-w-lg w-full">
            <h3 class="text-xl text-gray-800 font-bold mb-6">Aggiungi Nuova Tipologia</h3>
            <form method="post">
                <input type="text" class="block w-full p-3 mb-4 border rounded text-gray-700" id="new" name="newtipologia" required placeholder="Inserisci una tipologia di spesa">
                <div class="flex justify-end">
                    <button type="button" class="bg-gray-300 text-gray-800 rounded py-2 px-4 mr-2 hover:bg-gray-400" onclick="closeModal()">Chiudi</button>
                    <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white rounded py-2 px-4">Aggiungi tipologia</button>
                </div>
            </form>
        </div>
    </div>
    <p class="mt-5"><a href="lista.php?action=back" class="text-blue-600 hover:text-blue-800">Torna alla lista</a></p>
</div>

<script>
    function openModal() {
        document.getElementById('modalTipologia').classList.remove('hidden');
    }

    function closeModal() {
        document.getElementById('modalTipologia').classList.add('hidden');
    }
</script>
</body>
</html>
