<?php
include('index.php');

$user = $_GET['user'];


// Query to fetch data with pagination
$result = mysqli_query($conn, "SELECT article, SUM(quantite) AS total_quantite FROM vente_article WHERE user = '$user' GROUP BY article ORDER BY article");

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les articles totaux</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.bootstrap4.min.css">
</head>
<body>

<div class="container-fluid mt-5">
    <div class="row">
        <div class="col">
            <h2 class="text-center">Les articles totaux</h2>
            <div class="table-responsive">
                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>Article</th>
                            <th>Quantité</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                            <tr>
                                <td><?php echo $row['article']; ?></td>
                                <td><?php echo $row['total_quantite']; ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
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
new DataTable('#example', {
    layout: {
        topStart: {
            buttons: ['copy', 'excel', 'pdf', 'colvis']
        }
    }
});
</script>

</body>
</html>
