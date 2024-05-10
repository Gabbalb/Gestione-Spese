<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <title>Nota Spese</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-exp.min.css">
    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">

</head>
<body class="bg-gray-100">
<header class="bg-white">
    <div class="mx-auto flex h-16 max-w-screen-xl items-center gap-8 px-4 sm:px-6 lg:px-8">
        <h1 class="text-2xl font-bold">Nota spese</h1>

        <div class="flex flex-1 items-center justify-end md:justify-between">
            <nav aria-label="Global" class="hidden md:block">

            </nav>

            <div class="flex items-center gap-4">
                <div class="sm:flex sm:gap-4">
                    <a
                            class=" text-white block rounded-md bg-blue-600 px-5 py-2.5 text-sm font-medium text-white transition hover:bg-blue-700"
                            href="index.php"
                    >
                        <p class="no-underline ">Logout</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="p-6  max-w-screen-xl mx-auto px-4 md:px-8">
    <div class="max-w-lg">
        <h3 class="text-gray-800 text-xl font-bold sm:text-2xl">
            Team members
        </h3>
        <p class="text-gray-600 mt-2">
            Ecco la lista di tutti gli utenti
        </p>
    </div>
    <div class="mt-12 shadow-sm border rounded-lg overflow-x-auto">
        <table class="w-full table-auto text-sm text-left">
            <thead class="bg-gray-50 text-gray-600 font-medium border-b">
            <tr>
                <?php foreach ($headers as $head): ?>
                <th class="py-3 px-6"><?= $head ?></th>
                <?php endforeach; ?>
            </tr>
            </thead>
            <tbody class="text-gray-600 divide-y">
                    <?php foreach ($results as $result): ?>
                <tr>
                    <?php for ($i = 0; $i < sizeof($result) / 2; $i++): ?>
                    <td class="px-6 py-4 whitespace-nowrap"><?= $result[$i] ?></td>
                    <?php endfor; ?>
                    <td class="px-6 py-4 whitespace-nowrap"><p><a href="lista.php?action=delete&id=<?= $utente['id'] ?>"><svg class="h-6 w-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M10 12V17" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M14 12V17" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M4 7H20" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M6 10V18C6 19.6569 7.34315 21 9 21H15C16.6569 21 18 19.6569 18 18V10" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M9 5C9 3.89543 9.89543 3 11 3H13C14.1046 3 15 3.89543 15 5V7H9V5Z" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></p></td>

                </tr>
                <?php endforeach; ?>
                <?php if (isset($utenti) && is_array($utenti) && count($utenti) > 0): ?>
                <?php foreach ($utenti as $utente): ?>
                    <tr>

                    </tr>
                    <?php endforeach; ?>
                    <?php endif; ?>

            </tbody>
        </table>
    </div>
</div>

<p><-- <a href="visualizza.php?action=back">Torna alla lista</a></p>
</body>
</html>
