<?php 
include("index.php");

$cur_user = $_GET['user'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Data</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
    <!-- DataTables Checkboxes CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
    
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
    <link type="text/css" href="https://gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/css/dataTables.checkboxes.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.7.0/js/dataTables.select.min.js"></script>
    <script type="text/javascript" src="https://gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/js/dataTables.checkboxes.min.js"></script>

    <style>
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h2><i class="fa fa-bars"></i> Tabs <small>Float right</small></h2>
                        <button class="btn btn-link float-right" id="toggleForm"><i class="fa fa-chevron-up"></i></button>
                    </div>
                    <div class="card-body" id="formCollapse">
                        <div class="form-row">
                            <div class="col-md-4 form-group">
                                <label for="client_client">Client</label>
                                <select id="client_client" class="form-control">
                                    <?php  
                                    $resultCl = mysqli_query($conn, "SELECT * FROM client ");
                                    while($resCl = mysqli_fetch_array($resultCl)){  
                                        echo '<option value="' . $resCl['client'] . '">' . $resCl['client'] . '</option>';
                                    } 
                                    ?>
                                </select>
                            </div>
                            <div class="col-md-4 form-group">
                                <label for="categorie_client">Catégorie</label>
                                <select id="categorie_client" class="form-control">
                                    <?php  
                                    $resultCat = mysqli_query($conn, "SELECT * FROM categorie ");
                                    while($resCat = mysqli_fetch_array($resultCat)){  
                                        echo '<option value="' . $resCat['categorie'] . '">' . $resCat['categorie'] . '</option>';
                                    } 
                                    ?>
                                </select>
                            </div>
                            <div class="col-md-4 form-group">
                                <label for="projet_client">Projet</label>
                                <input type="text" id="projet_client" class="form-control">
                            </div>
                            <div class="col-md-4 form-group">
                                <label for="description_client">Description</label>
                                <input type="text" id="description_client" class="form-control">
                            </div>
                            <div class="col-md-4 form-group">
                                <label for="num_client">Num</label>
                                <input type="text" id="num_client" class="form-control">
                            </div>
                            <div class="col-md-4 form-group">
                                <label for="statut_client">Statut</label>
                                <select id="statut_client" class="form-control">
                                    <?php  
                                    $resultSt = mysqli_query($conn, "SELECT * FROM statut_commande ");
                                    while($resSt = mysqli_fetch_array($resultSt)){  
                                        echo '<option value="' . $resSt['statut'] . '">' . $resSt['statut'] . '</option>';
                                    } 
                                    ?>
                                </select>
                            </div>
                        </div>
                        <br>
                        <input type="button" id="save_client" value="Save" class="btn btn-primary">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
          <div class="col-sm-12">
                <!-- Table -->
                <table id="example" class="table table-striped table-bordered" style="width:100%">
           
                    <thead>
                        <tr>
                            <th></th> <!-- This th is for the checkbox column -->
                            <th>Code</th>
                            <th>Article</th>
                            <th>Unité</th>
                            <th>Prix HT</th>
                            <th>Quantité</th>
                            <th>Prix Total HT</th>
                            <th>TVA</th>
                            <th>Prix TTC</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $result = mysqli_query($conn, "SELECT * FROM vente_article where statut = 'selection' and user = '$cur_user'");
                        while($row = mysqli_fetch_array($result)){ 
                            $total_ht = $row["prix_ht"] * $row["quantite"];
                            $prix_ttc = $total_ht + $total_ht * $row["tva"];
                        ?>
                        <tr id="<?= $row["id"] ?>">
                            <td> <?= $row["id"] ?></td>
                            <td><?= $row["code"] ?></td>
                            <td><?= $row["article"] ?></td>
                            <td><?= $row["unite"] ?></td>
                            <td><?= $row["prix_ht"] ?></td>
                            <td><?= $row["quantite"] ?></td>
                            <td id="total_ht_<?= $row["id"] ?>"><?= $total_ht ?></td>
                            <td><?= $row["tva"] ?></td>
                            <td id="prix_ttc_<?= $row["id"] ?>"><?= $prix_ttc ?></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <br>

    <input type="button" value="alert ids" id="save">
    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- DataTables JS -->
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <!-- DataTables Checkboxes JS -->
    <script type="text/javascript" src="https://gyrocode.github.io/jquery-datatables-checkboxes/1.2.12/js/dataTables.checkboxes.min.js"></script>
   
   
   <script>
$(document).ready(function() {
    $("#toggleForm").click(function() {
        $("#formCollapse").toggleClass("hidden");
        var icon = $(this).find("i");
        icon.toggleClass("fa-chevron-up fa-chevron-down");
    });

    $(document).ready(function() {
        var table = $("#example").DataTable({
            'columnDefs': [{
                'targets': 0,
                'checkboxes': {
                    'selectRow': true
                }
            }],
            'select': {
                'style': 'multi'
            },
            'order': [[1, 'decs']]
        });

        $('#save').on("click", function() {
            var selected_rows = table.column(0).checkboxes.selected();
            var selected_ids = [];
            $.each(selected_rows, function(index, id) {
                selected_ids.push(id);
            });
            alert(JSON.stringify(selected_ids));
        });

        $("#save_client").on("click", function() {
        $.ajax({
            url: "client_request_server.php",
            type: 'POST',
            data: {
                categorie: $("#categorie_client").val(),
                client: $("#client_client").val(),
                num: $("#num_client").val(),
                projet: $("#projet_client").val(),
                statut: $("#statut_client").val(),
                description: $("#description_client").val(),
                user : "<?= $cur_user ?>"
            },
            cache: false,
            success: function(data) {
                alert(data.message); 
                window.location.href = "theOfficial_modification.php?id_client=" + data.message + "&cur_user=<?= $cur_user ?>";
            },
            error: function(xhr, status, error) {
                console.error(xhr.responseText);
                alert("An error occurred while processing the request.");
            }
        });
    });
    });

});

    </script>
</body>
</html>

