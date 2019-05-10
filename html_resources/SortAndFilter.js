$(document).ready(function() {
    $('#t1').DataTable();
});


//You can change the number in line 20 and 21 to sort by name or anything you want

function sort() {

    var table, rows, switching, i, x, y, shouldSwitch;
    //match the table's ID below
    table = document.getElementById("mytable1");
    switching = true;

    while (switching) {

        switching = false;
        rows = table.rows;

        for (i = 1; i < (rows.length - 1); i++) {
            // Start by saying there should be no switching:
            shouldSwitch = false;
            //Change the number in the [] to match the column, ex: 0 means the first column
            x = rows[i].getElementsByTagName("td")[0];
            y = rows[i + 1].getElementsByTagName("td")[0];

            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {

                shouldSwitch = true;
                break;
            }
        }
        if (shouldSwitch) {


            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }

}

function filterByName() {
    // Declare variables 
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("input");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}




function sortByColumn1And2() {
    var table, rows, switching, i, x, y, a, b, shouldSwitch;
    table = document.getElementById("table");
    switching = true;
    while (switching) {
        switching = false;
        rows = table.getElementsByTagName("tr");
        for (i = 0; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            //First, sort column 1
            x = rows[i].getElementsByTagName("td")[0];
            y = rows[i + 1].getElementsByTagName("td")[0];
            //check if the two rows should switch place:
            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                //For number, you can use:
                //if (Number(x.innerHTML) < Number(y.innerHTML)) 

                //if so, mark as a switch and break the loop:
                shouldSwitch = true;
                break;
            }

        }
        if (shouldSwitch) {
            /*If a switch has been marked, make the switchcand mark that a switch has been done:*/
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }

    for (i = 0; i < (rows.length - 1); i++) {

        for (j = i + 1; j < (rows.length); j++) {
            x = rows[i].getElementsByTagName("td")[0];
            y = rows[j].getElementsByTagName("td")[0];
            a = rows[i].getElementsByTagName("td")[1];
            b = rows[j].getElementsByTagName("td")[1];
            //check if the two rows should switch place:
            if (x.innerHTM.toLowerCase() == y.innerHTML.toLowerCase()) {
                //if so, swap
                if (a.innerHTML.toLowerCase() > b.innerHTML.toLowerCase()) {
                    rows[i].parentNode.insertBefore(rows[j], rows[i]);
                }
            }
        }
    }


}