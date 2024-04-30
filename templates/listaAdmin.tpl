<!doctype html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>


    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.10.2/dist/full.min.css" rel="stylesheet" type="text/css" />
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
        <h1>Nota Spese Dashboard</h1>
    </div>
    <div class="profile">
        <h3>Ciao <?=$username?></h3>
        <button class="btn btn-action tooltip tooltip-bottom" data-tooltip="Logout">
            <a href="success.php?action=logout">
                <i class="icon icon-share"></i>
            </a>
        </button>
    </div>
</div>
<div class="grid grid-cols-4 gap-4 place-content-center">
    <div class="card w-96 bg-base-100 shadow-xl place-content-center">

        <div class="card-body items-center text-center">
            <h1 class="text-5xl text-center card-title">4</h1>
            <p>Utenti</p>
            <div class="card-actions">
                <a href="registrazione.php?acrtion=regisrazione"><button class="btn btn-primary">Aggiungi Utente</button></a>
            </div>
        </div>
    </div>
    <div class="card w-96 bg-base-100 shadow-xl place-content-center">

        <div class="card-body items-center text-center">
            <h1 class="text-5xl text-center card-title">6</h1>
            <p>tipologie</p>
            <div class="card-actions">
                <button class="btn btn-primary">Aggiungi tipologia spesa</button>
            </div>
        </div>
    </div>
    <div class="card w-96 bg-base-100 shadow-xl place-content-center">

        <div class="card-body items-center text-center">
            <h1 class="text-5xl text-center card-title">1500$</h1>
            <p>Spesa totale mensile</p>
            <progress class="progress progress-error w-56" value="75" max="100"></progress>
            <div class="card-actions">
                <button class="btn btn-primary">Visualizza dettagli</button>
            </div>
        </div>
    </div>
    <div class="card w-96 bg-base-100 shadow-xl place-content-center">

        <div class="card-body items-center text-center">
            <h1 class="text-5xl text-center card-title">142</h1>
            <p>Note</p>
            <div class="card-actions">
                <button class="btn btn-primary">Visualizza Note</button>
            </div>
        </div>
    </div>
    <div class="card w-96 bg-base-100 shadow-xl place-content-center">

        <div class="card-body items-center text-center">
            <h1 class="text-5xl text-center card-title">10</h1>
            <p>utenti attivi</p>
            <div class="card-actions">
                <button class="btn btn-primary">Buy Now</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>
