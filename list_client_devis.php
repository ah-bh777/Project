<?php
include('index.php');
$user = $_GET['user'];

// Query to fetch data with pagination
$result = mysqli_query($conn, "SELECT * FROM vente WHERE user = '$user' ");

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les client devis/commandes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Style to make zebra-striped table */
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>

<div class="container-fluid mt-5">
    <div class="row">
        <div class="col">
            <h2 class="text-center">Les client devis/commandes</h2>
            <div class="table-responsive">
                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Client</th>
                            <th>Num</th>
                            <th>Projet</th>
                            <th>Categorie</th>
                            <th>Description</th>
                            <th>Statut</th>
                            <th>User</th>
                            <th>Date Creation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                            <tr>
                                <td><?php echo $row['client']; ?></td>
                                <td><?php echo $row['num']; ?></td>
                                <td><?php echo $row['projet']; ?></td>
                                <td><?php echo $row['categorie']; ?></td>
                                <td><?php echo $row['description']; ?></td>
                                <td><?php echo $row['statut']; ?></td>
                                <td><?php echo $row['user']; ?></td>
                                <td><?php echo $row['date_creation']; ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
            
            <!-- Pagination -->
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <!-- Pagination links will be here -->
                </ul>
            </nav>
        </div>
    </div>
</div>

<!-- Import jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<!-- Import Popper.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<!-- Import Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Import DataTables library -->
<script src="https://cdn.datatables.net/2.0.3/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.0.3/js/dataTables.bootstrap4.js"></script>

<!-- Import DataTables Buttons library -->
<script src="https://cdn.datatables.net/buttons/3.0.1/js/dataTables.buttons.js"></script>
<script src="https://cdn.datatables.net/buttons/3.0.1/js/buttons.bootstrap4.js"></script>

<!-- Import JSZip library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>

<!-- Import PDFMake library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>

<!-- Import HTML5 export buttons -->
<script src="https://cdn.datatables.net/buttons/3.0.1/js/buttons.html5.min.js"></script>

<!-- Import Print button -->
<script src="https://cdn.datatables.net/buttons/3.0.1/js/buttons.print.min.js"></script>

<!-- Import Column Visibility button -->
<script src="https://cdn.datatables.net/buttons/3.0.1/js/buttons.colVis.min.js"></script>

<script>
    $(document).ready(function() {
        $('#example').DataTable({
            // Add buttons for copy, excel, pdf, and column visibility
            buttons: ['copy', 'excel', 'pdf', 'colvis']
        });
    });
</script>

</body>
</html>
