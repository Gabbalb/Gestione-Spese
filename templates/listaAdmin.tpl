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
<body class="bg-gray-100">
<div class="navbar">
    <div class="title">
        <h1>Nota Spese Dashboard</h1>
    </div>
    <div class="profile">
        <h3>Ciao <?=$username?></h3>
        <a href="index.php?action=logout">
        <button class="btn btn-action tooltip tooltip-bottom" data-tooltip="Logout">

                <i class="icon icon-share"></i>

        </button></a>
    </div>
</div>
 <!-- <div class="stats shadow">

    <div class="stat">
        <div class="stat-figure text-secondary">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-8 h-8 stroke-current"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
        </div>
        <div class="stat-title">Utenti</div>
        <div class="stat-value">14</div>
        <div class="stat-desc">Utenti Registrati</div>
        <div class="card-actions">
            <a href="registrazione.php?acrtion=regisrazione"><button class="btn btn-primary">Aggiungi Utente</button></a>
        </div>
        <div class="card-actions">
            <a href="visualizza.php?query=1"><button class="btn btn-primary">Visualizza Utenti</button></a>

        </div>
    </div>

    <div class="stat">
        <div class="stat-figure text-secondary">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-8 h-8 stroke-current"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4"></path></svg>
        </div>
        <div class="stat-title">Tipologie</div>
        <div class="stat-value">6</div>
        <div class="stat-desc">tipologie spese</div>
        <div class="card-actions">
            <button class="btn btn-primary">Aggiungi tipologia spesa</button>
        </div>
    </div>

    <div class="stat">
        <div class="stat-figure text-secondary">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-8 h-8 stroke-current"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4"></path></svg>
        </div>
        <div class="stat-title">New Registers</div>
        <div class="stat-value">1,200</div>
        <div class="stat-desc">↘︎ 90 (14%)</div>
        <div class="card-actions">
            <button class="btn btn-primary">Aggiungi Nuova Registrazione</button>
        </div>
    </div>

</div> -->

<section class="bg-gray-100 ">
    <div class="mx-auto max-w-screen-xl px-4 py-12 sm:px-6 md:py-16 lg:px-8">
        <div class="mx-auto max-w-3xl text-center">
            <h2 class="text-3xl font-bold text-gray-900 sm:text-4xl">Una dashboard tutta per te...</h2>

            <p class="mt-4 text-gray-500 sm:text-xl">
                Le spese dei tuoi dipendenti stanno andando così
            </p>
        </div>

        <div class="mt-8 sm:mt-12">
            <dl class="grid grid-cols-1 gap-4 sm:grid-cols-3">
                <div class="flex flex-col rounded-lg bg-blue-50 px-4 py-8 text-center">
                    <dt class="order-last text-lg font-medium text-gray-500">Utenti</dt>

                    <dd class="text-4xl font-extrabold text-blue-600 md:text-5xl">$4.8m</dd>
                </div>

                <div class="flex flex-col rounded-lg bg-blue-50 px-4 py-8 text-center">
                    <dt class="order-last text-lg font-medium text-gray-500">Official Addons</dt>

                    <dd class="text-4xl font-extrabold text-blue-600 md:text-5xl">24</dd>
                </div>

                <div class="flex flex-col rounded-lg bg-blue-50 px-4 py-8 text-center">
                    <dt class="order-last text-lg font-medium text-gray-500">Total Addons</dt>

                    <dd class="text-4xl font-extrabold text-blue-600 md:text-5xl">86</dd>
                </div>
            </dl>
        </div>
    </div>
</section>
<section class="container bg-gray-100 grid grid-cols-3  gap-4">

    <!-- spese degli utenti -->
    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-green-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>

    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-red-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>
    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-red-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>
    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-red-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>
    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-red-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>
    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-red-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>
    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-red-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>
    <article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Profit</p>

                <p class="text-2xl font-medium text-gray-900">$240.94</p>
            </div>

            <span class="rounded-full bg-blue-100 p-3 text-blue-600">
      <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-8 w-8"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
      >
        <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </span>
        </div>

        <div class="mt-1 flex gap-1 text-red-600">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-4 w-4"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
            >
                <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"
                />
            </svg>

            <p class="flex gap-2 text-xs">
                <span class="font-medium"> 67.81% </span>

                <span class="text-gray-500"> Since last week </span>
            </p>
        </div>
    </article>

</section>



</body>
</html>