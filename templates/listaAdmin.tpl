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
    <a href="registrazione.php"><article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Aggiungi</p>

                <p class="text-2xl font-medium text-gray-900">Nuovo Utente</p>
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
                d="M20 18L14 18M17 15V21M4 21C4 17.134 7.13401 14 11 14C11.695 14 12.3663 14.1013 13 14.2899M15 7C15 9.20914 13.2091 11 11 11C8.79086 11 7 9.20914 7 7C7 4.79086 8.79086 3 11 3C13.2091 3 15 4.79086 15 7Z"
        />
      </svg>
    </span>
        </div>
    </article></a> <!--NUOVO UTENTE-->

    <a href="visualizza.php"><article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Visualizza</p>

                <p class="text-2xl font-medium text-gray-900">Utenti</p>
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
                d="M12 14C8.13401 14 5 17.134 5 21H19C19 17.134 15.866 14 12 14Z"
                ></path>
          <path
                  stroke-linecap="round"
                  stroke-linejoin="round"

                  d="M16 7C16 9.20914 14.2091 11 12 11C9.79086 11 8 9.20914 8 7C8 4.79086 9.79086 3 12 3C14.2091 3 16 4.79086 16 7Z"></path>
          <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M12 14C8.13401 14 5 17.134 5 21H19C19 17.134 15.866 14 12 14Z" ></path>
    </span>
        </div>

    </article></a> <!--VISUALIZZA UTENTI-->

    <a><article class="rounded-lg border border-gray-100 bg-white p-6">
        <div class="flex items-center justify-between">
            <div>
                <p class="text-sm text-gray-500">Aggiungi</p>

                <p class="text-2xl font-medium text-gray-900">Tipologia</p>
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
                d="M152,48a12,12,0,0,1-12,12H116a12,12,0,0,1,0-24h24A12,12,0,0,1,152,48ZM140,196H116a12,12,0,0,0,0,24h24a12,12,0,0,0,0-24ZM180,60h16V76a12,12,0,0,0,24,0V56a20.02292,20.02292,0,0,0-20-20H180a12,12,0,0,0,0,24Zm28,43.99951a12,12,0,0,0-12,12v24a12,12,0,0,0,24,0v-24A12,12,0,0,0,208,103.99951Zm-160,48a12,12,0,0,0,12-12v-24a12,12,0,1,0-24,0v24A12,12,0,0,0,48,151.99951ZM76,196H60V180a12,12,0,0,0-24,0v20a20.02292,20.02292,0,0,0,20,20H76a12,12,0,0,0,0-24ZM76,36H56A20.02292,20.02292,0,0,0,36,56V76a12,12,0,0,0,24,0V60H76a12,12,0,0,0,0-24ZM236,196H220V180a12,12,0,0,0-24,0v16H180a12,12,0,0,0,0,24h16v16a12,12,0,0,0,24,0V220h16a12,12,0,0,0,0-24Z"
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
    </article></a> <!--AGGIUNGI TIPOLOGIA-->
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