<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nota Spese</title>
    <script src="https://cdn.tailwindcss.com"></script>

    <link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre-icons.min.css">
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">
<div class="flex items-center justify-between p-5 bg-white shadow">
    <h1 class="text-lg text-gray-700">Nota Spese</h1>
    <div class="flex items-center">
        <h3 class="mr-3 text-base text-gray-600">Ciao <?=$username?></h3>
        <a href="index.php?action=logout" class="flex items-center justify-center w-8 h-8 text-white bg-blue-500 rounded hover:bg-blue-600">
            <i class="icon icon-share"></i>
        </a>
    </div>
</div>
<div class="container mx-auto mt-5">
    <div class="p-5 bg-white shadow-sm rounded">
        <table  class="w-full text-sm text-left text-gray-500">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50">
            <tr>
                <th class="px-6 py-3 sortable" data-column="0" data-sort-direction="asc">Descrizione</th>
                <th class="px-6 py-3 sortable" data-column="1" data-sort-direction="asc">Data</th>
                <th class="px-6 py-3 sortable" data-column="2" data-sort-direction="asc">Importo</th>
                <th class="px-6 py-3 sortable" data-column="3" data-sort-direction="asc">Tipo</th>
                <th class="px-6 py-3">Elimina</th>
                <th class="px-6 py-3">Modifica</th>
            </tr>
            </thead>
            <tbody class="text-gray-600 divide-y" id="table-body">
            <?php
            // Check if the updated expense data is available
            if (isset($spesaAggiornata) && is_array($spesaAggiornata) && !empty($spesaAggiornata)): ?>
            <!-- Render the updated expense details -->
            <tr>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="descrizione"><?= $spesaAggiornata['descrizione'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="date"><?= $spesaAggiornata['date'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="importo"><?= $spesaAggiornata['importo'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="tipo"><?= $spesaAggiornata['Id_tipo'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable"><p><a href="lista.php?action=delete&id=<?= $spesaAggiornata['id'] ?>"><svg class="h-6 w-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M10 12V17" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M14 12V17" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M4 7H20" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M6 10V18C6 19.6569 7.34315 21 9 21H15C16.6569 21 18 19.6569 18 18V10" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M9 5C9 3.89543 9.89543 3 11 3H13C14.1046 3 15 3.89543 15 5V7H9V5Z" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></p></td>
                <td class="px-6 py-4 whitespace-nowrap sortable"><button class="btn btn-link" onclick="openModal('<?= $spesaAggiornata['id'] ?>', '<?= $spesaAggiornata['descrizione'] ?>', '<?= $spesaAggiornata['date'] ?>', '<?= $spesaAggiornata['importo'] ?>', '<?= $spesaAggiornata['Id_tipo'] ?>')"> <svg class="h-6 w-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M20.1497 7.93997L8.27971 19.81C7.21971 20.88 4.04971 21.3699 3.27971 20.6599C2.50971 19.9499 3.06969 16.78 4.12969 15.71L15.9997 3.84C16.5478 3.31801 17.2783 3.03097 18.0351 3.04019C18.7919 3.04942 19.5151 3.35418 20.0503 3.88938C20.5855 4.42457 20.8903 5.14781 20.8995 5.90463C20.9088 6.66146 20.6217 7.39189 20.0997 7.93997H20.1497Z" stroke="#0bff00" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M21 21H12" stroke="#0bff00" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></button></td>
            </tr>
            <?php endif; ?>
            <!-- Render other expenses -->
            <?php if (isset($spesePrec) && is_array($spesePrec) && count($spesePrec) > 0): ?>
            <?php foreach ($spesePrec as $s): ?>
            <tr>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="descrizione"><?= $s['descrizione'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="date"><?= $s['date'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="importo"><?= $s['importo'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable" data-column="tipo"><?= $s['Id_tipo'] ?></td>
                <td class="px-6 py-4 whitespace-nowrap sortable"><p><a href="lista.php?action=delete&id=<?= $s['id'] ?>"><svg class="h-6 w-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M10 12V17" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M14 12V17" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M4 7H20" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M6 10V18C6 19.6569 7.34315 21 9 21H15C16.6569 21 18 19.6569 18 18V10" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M9 5C9 3.89543 9.89543 3 11 3H13C14.1046 3 15 3.89543 15 5V7H9V5Z" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></p></td>
                <td class="px-6 py-4 whitespace-nowrap sortable"><button class="btn btn-link" onclick="openModal('<?= $s['id'] ?>', '<?= $s['descrizione'] ?>', '<?= $s['date'] ?>', '<?= $s['importo'] ?>', '<?= $s['Id_tipo'] ?>')"> <svg class="h-6 w-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M20.1497 7.93997L8.27971 19.81C7.21971 20.88 4.04971 21.3699 3.27971 20.6599C2.50971 19.9499 3.06969 16.78 4.12969 15.71L15.9997 3.84C16.5478 3.31801 17.2783 3.03097 18.0351 3.04019C18.7919 3.04942 19.5151 3.35418 20.0503 3.88938C20.5855 4.42457 20.8903 5.14781 20.8995 5.90463C20.9088 6.66146 20.6217 7.39189 20.0997 7.93997H20.1497Z" stroke="#0bff00" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M21 21H12" stroke="#0bff00" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></button></td>
            </tr>
            <?php endforeach; ?>
            <?php endif; ?>
            </tbody>
        </table>
    </div>
    <div class="fixed bottom-0 right-0 p-5">
        <a href="aggiungiSpesa.php"><button class="p-2 bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-full">Aggiungi Spesa</button></a>
    </div>
</div>

<div id="modal" class="fixed inset-0 bg-gray-500 bg-opacity-50 overflow-y-auto h-full w-full" style="display: none;">
    <div class="relative top-20 mx-auto p-5 border w-96 shadow-lg rounded-md bg-white">
        <div class="mt-3 text-center">
            <h3 class="text-lg leading-6 font-medium text-gray-900">Modifica Spesa</h3>
            <div class="mt-2 px-7 py-3">
                <form id="edit-form" method="post" class="space-y-6">
                    <input type="hidden" id="id" name="id">
                    <div class="relative">
                        <label class="leading-loose">Descrizione</label>
                        <input type="text" id="descrizione" name="descrizione" class="w-full px-4 py-2 border rounded" placeholder="Descrizione della spesa" required>
                    </div>
                    <div class="relative">
                        <label class="leading-loose">Data</label>
                        <input type="date" id="data" name="data" class="w-full px-4 py-2 border rounded" required>
                    </div>
                    <div class="relative">
                        <label class="leading-loose">Importo (€)</label>
                        <input type="number" id="importo" name="importo" class="w-full px-4 py-2 border rounded" step="0.01" required>
                    </div>
                    <div class="relative">
                        <label class="leading-loose">Tipo</label>
                        <select id="tipologia" name="tipologia" class="w-full px-4 py-2 border rounded">
                            <?php if (isset($tipologie) && is_array($tipologie) && count($tipologie) > 0): ?>
                            <?php foreach ($tipologie as $tipologia): ?>
                            <option value="<?= $tipologia['id'] ?>"><?= $tipologia['nome'] ?></option>
                            <?php endforeach; ?>
                            <?php endif; ?>
                        </select>
                    </div>
                    <div class="flex items-center justify-between p-5">
                        <a href="lista.php?action=modify&id=<?= $s['id'] ?>"><button class="px-4 py-2 bg-blue-500 text-white text-base font-medium rounded-md w-auto hover:bg-blue-600">Save</button></a>
                        <button type="button" class="px-4 py-2 bg-white text-base rounded-md border w-auto text-gray-700 hover:bg-gray-100" onclick="closeModal()">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function openModal(id, descrizione, data, importo, tipologia) {
        document.getElementById('modal').style.display = 'block';
        document.getElementById('id').value = id;
        document.getElementById('descrizione').value = descrizione;
        document.getElementById('data').value = data;
        document.getElementById('importo').value = importo;
        document.getElementById('tipologia').value = tipologia;
        document.getElementById('edit-form').action = 'lista.php?id=' + id;
    }

    function closeModal() {
        document.getElementById('modal').style.display = 'none';
    }
</script>
 <!-- <script>
    function sortTable(header) {
        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
        table = document.getElementById("table-body");
        switching = true;
        // Set the sorting direction to ascending:
        dir = header.getAttribute("data-sort-direction");

        // Make a loop that will continue until no switching has been done:
        while (switching) {
            // Start by saying: no switching is done:
            switching = false;
            rows = table.getElementsByTagName("TR");

            // Loop through all table rows (except the first, which contains table headers):
            for (i = 0; i < rows.length - 1; i++) {
                // Start by saying there should be no switching:
                shouldSwitch = false;
                // Get the two elements to compare, one from current row and the next:
                x = rows[i].getElementsByTagName("TD")[header.dataset.column];
                y = rows[i + 1].getElementsByTagName("TD")[header.dataset.column];

                // Check if the two rows should switch place:
                if (dir == "asc") {
                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                        // If so, mark as a switch and break the loop:
                        shouldSwitch = true;
                        break;
                    }
                } else if (dir == "desc") {
                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                        shouldSwitch= true;
                        break;
                    }
                }
            }
            if (shouldSwitch) {
                // If a switch has been marked, make the switch and mark the switch is done:
                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                switching = true;
                // Each time a switch is done, increase this count:
                switchcount ++;
            } else {
                // If no switching has been done AND the direction is "asc",
                // set the direction to "desc" and run the while loop again.
                if (switchcount == 0 && dir == "asc") {
                    dir = "desc";
                    header.setAttribute("data-sort-direction", "desc");
                    switching = true;
                }
            }
        }
    }

    document.querySelectorAll('.sortable').forEach(function(header) {
        header.addEventListener('click', function() {
            sortTable(header);
            // Toggle sort direction for the next click
            header.setAttribute("data-sort-direction", header.getAttribute("data-sort-direction") === "asc" ? "desc" : "asc");
        });
    });
</script> -->
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const getCellValue = (tr, idx) => tr.children[idx].innerText || tr.children[idx].textContent;

        const parseValue = value => {
            // Try to parse as date
            const date = Date.parse(value);
            if (!isNaN(date)) {
                return new Date(date);
            }
            // Try to parse as number
            const number = value.replace(/[^\d.-]/g, '');
            if (!isNaN(number) && number.trim() !== '') {
                return parseFloat(number);
            }
            // Return as string
            return value.toLowerCase();
        };

        const comparer = (idx, asc) => (a, b) => {
            const v1 = parseValue(getCellValue(asc ? a : b, idx));
            const v2 = parseValue(getCellValue(asc ? b : a, idx));
            if (v1 instanceof Date && v2 instanceof Date) {
                return v1 - v2;
            } else if (typeof v1 === 'number' && typeof v2 === 'number') {
                return v1 - v2;
            } else {
                return v1.toString().localeCompare(v2.toString());
            }
        };

        // Attach click handlers
        document.querySelectorAll('th.sortable').forEach(th => {
            let asc = true; // sort direction state
            th.addEventListener('click', function() {
                const table = th.closest('table');
                const tbody = table.querySelector('tbody');
                Array.from(tbody.querySelectorAll('tr'))
                    .sort(comparer(Array.from(th.parentNode.children).indexOf(th), asc = !asc))
                    .forEach(tr => tbody.appendChild(tr));
            });
        });
    });
</script>




</body>
</html>
