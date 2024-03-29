<?php
include("index.php");
$user = $_GET['user'];
$result = mysqli_query($conn, "SELECT * FROM histoire_rapport WHERE user = '$user'");

$ids_c = []; 
while ($res = mysqli_fetch_array($result)) {
    $ids_c[] = $res['id_client']; 
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Table</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .list-group-item {
        text-align: justify;
        cursor: pointer; /* Add pointer cursor for clickable items */
        transition: background-color 0.3s; /* Smooth background color transition */
    }
    .list-group-item:hover {
        background-color: #f8f9fa; /* Highlight color on hover */
    }
    .list-group-item.selected {
        background-color: #f8f9fa; /* Highlight color */
    }
    .info-client, .info-num, .info-date {
        display: inline-block;
        width: 30%; /* Adjust the width as needed */
        text-align: justify;
    }
    .info-client-header, .info-num-header, .info-date-header {
        display: inline-block;
        width: 30%; /* Adjust the width as needed */
        text-align: justify;
    }

    .info-num {
        text-align: center; /* Center-align the num and header */
    }
    .info-date {
        text-align: right; /* Right-align the date */
    }

    .info-num-header {
        text-align: center; /* Center-align the num and header */
    }
    .info-date-header {
        text-align: right; /* Right-align the date */
    }
    .info-client-header {
        text-align: left; /* Right-align the date */
    }
    .hidden-form {
    max-height: 0; /* Initially hide the form */
    overflow: hidden; /* Hide overflowing content */
    transition: max-height 0.3s ease-in-out, opacity 0.3s ease-in-out; /* Smooth transition for form dropdown */
    opacity: 0; /* Initially hide the form */
}
.hidden-form.show {
    max-height: 300px; /* Adjust the maximum height as needed */
    opacity: 1; /* Show the form */
}
    .hidden-form hr {
        border: none; /* Remove border */
        height: 1px; /* Set height to create a line */
        background-color: #ccc; /* Light gray color */
        margin: 10px 0; /* Adjust margin for spacing */
    }
    </style>
</head>
<body>
    <div class="container">
        <h2>histoire des rapports</h2>
        <ul class="list-group">
            <?php
            // Add header list item
            echo "<li style='background-color: grey; color: white;' class='list-group-item header'>  
            <span class='info-client-header'>client</span>
            <span class='info-num-header'>num</span>
            <span class='info-date-header'>date</span>
        </li>";

            foreach ($ids_c as $id) {
                $resultInfos = mysqli_query($conn,"SELECT * FROM vente where id = '$id'");
                while($resInfo = mysqli_fetch_array($resultInfos)){
                    // Fetch additional information using a single query
                    $result_vente_article = mysqli_query($conn,"SELECT  SUM(prix_ht * quantite * tva) as total ,count(article) as articles FROM vente_article where id_vente = '$id'");
                    $res_vente_article = mysqli_fetch_array($result_vente_article);
                    ?>
                    <li class='list-group-item' onclick="toggleForm(this)"> 
                        <span class="info-client"><?php echo $resInfo['client']; ?></span>
                        <span class="info-num"><?php echo $resInfo['num']; ?></span>
                        <span class="info-date"><?php echo $resInfo['date_creation']; ?></span>
                        <!-- Hidden form -->
                        <div class="hidden-form">
                            <hr>
                            <p> Projet: <?php echo $resInfo['projet']; ?> </p>
                            <p> Categorie: <?php echo $resInfo['categorie']; ?> </p>
                            <p> Statut: <?php echo $resInfo['statut']; ?> </p>
                            <p> Articles: <?php echo $res_vente_article['articles']; ?> </p>
                            <p> Total: <?php echo (int)round($res_vente_article['total'], 2); ?> </p>
                            <button onclick="window.location.href = 'fpdf_report.php?id_report=<?= $id ?>'">Generer le rapport</button>

                        </div>
                    </li>
                    <?php 
                }
            }
            ?>
        </ul>
    </div>

    <!-- Bootstrap JS (Optional) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script>
        function toggleForm(li) {
            // Remove 'selected' class from all list items
            var listItems = document.querySelectorAll('.list-group-item');
            listItems.forEach(item => item.classList.remove('selected'));

            // Highlight the selected list item
            li.classList.add('selected');

            // Toggle the visibility of the form inside the li
            var form = li.querySelector('.hidden-form');
            var isHidden = form.classList.contains('show');
            form.classList.toggle('show', !isHidden);
        }
    </script>
</body>
</html>
