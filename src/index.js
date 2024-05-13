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