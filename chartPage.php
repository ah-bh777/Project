<?php 
include("index.php");

$user =  $_GET['user'];

// Fetch data for vente_count and date_creation
$result = mysqli_query($conn,"SELECT COUNT(*) AS vente_count, vente.date_creation 
FROM vente 
JOIN vente_article ON vente.id = vente_article.id_vente 
GROUP BY vente.date_creation ORDER BY vente.date_creation DESC LIMIT 6");

// Initialize arrays to store vente_count and date_creation values
$VC = array(); // vente_count
$DC = array(); // date_creation

// Loop through the result set and store values in arrays
while ($row = mysqli_fetch_assoc($result)) {
    $VC[] = $row['vente_count'];
    $DC[] = $row['date_creation'];
}

// Fetch data for hot_article
$result1 = mysqli_query($conn,"SELECT COUNT(article) AS hot_article, article 
FROM vente_article 
WHERE user = '$user' 
GROUP BY article 
ORDER BY COUNT(article) DESC 
LIMIT 3");

// Initialize arrays to store hot_article and article values
$HA = array(); // hot_article
$NA = array(); // article

// Loop through the result set and store values in arrays
while ($row1 = mysqli_fetch_assoc($result1)) {
    $HA[] = $row1['hot_article'];
    $NA[] = $row1['article'];
}

$resultTotalArticle = mysqli_query($conn,"select count(article * quantite) as total_articles from vente_article where user = '$user'");

$row = mysqli_fetch_assoc($resultTotalArticle);

$total_articles = $row['total_articles'];



$resultTotalMoney = mysqli_query($conn,"select sum((prix_ht * quantite) * tva) as total_money from vente_article WHERE user = '$user' ");

$row2 = mysqli_fetch_assoc($resultTotalMoney);

$total_money = (int) round($row2['total_money']) ;



$resultTotalCMD = mysqli_query($conn,"select count(*) as total_vente from vente where user = '$user'");

$row1 = mysqli_fetch_assoc($resultTotalCMD);

$total_vente = $row1['total_vente'];



?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<!-- Bootstrap CSS --><!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css" rel="stylesheet">

<style>
.graphBox {
    position: relative;
    width: 87%; /* Change width to 90% */
    max-width: 1100px; /* Optional: set a max-width to ensure it doesn't become too wide */
    margin: 0 auto; /* Optional: center the element horizontally */
    padding: 20px;
    display: grid;
    grid-gap: 30px;
}

.graphBox canvas {
    width: 100%;
    height: auto; /* Change height to auto for responsiveness */
}

.graphBox .chart-container {
    width: 100%;
    height: 100%;
}

@media screen and (min-width: 601px) {
    .graphBox {
        grid-template-columns: 2fr 1fr; /* Two columns for larger screens */
    }
}
.top-container {
    display: flex; /* Use flexbox */
    justify-content: space-between; /* Spread items horizontally */
}

.top-box {
    padding: 30px;
    box-sizing: border-box;
    margin-right: 5px; /* Adjusted margin between items */
    flex: 1; /* Distribute equal width */
    border-radius: 10px; /* Add border radius for rounded corners */
}

.orange-box {
    background-color: orange;
    color: white;
}

.blue-box {
    background-color: blue;
    color: white;
}

.green-box {
    background-color: green;
    color: white;
}
.top-box:hover {
    opacity: 0.9; /* Reduce opacity on hover */
  
}

.top-box h5 ,p{
    display: block; /* Change display property to block */
    margin: 0; /* Remove default margin */
}

</style>

</head>
<body>

<div class="top-container">
    <div class="top-box orange-box">
        <h2><i class="bi bi-cart"></i> Total of Articles</h2>
        <h5><?= $total_articles ?></h5>
    </div>
    <div class="top-box blue-box">
        <h2><i class="bi bi-cash"></i> Total of  Money</h2>
        <h5><?= $total_money ?></h5>
    </div>
    <div class="top-box green-box">
        <h2><i class="bi bi-file-text"></i> Total of Commande</h2>
        <h5><?= $total_vente ?></h5>
    </div>
</div>

<div class="graphBox">
    <div class="chart-container">
        <canvas id="myChart"></canvas>
    </div>
    <div class="chart-container">
        <canvas id="myDonut"></canvas>
    </div>
</div>

<!-- Include Chart.js library -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


<script>
  // Wait for the DOM to be loaded before trying to access elements
  document.addEventListener("DOMContentLoaded", function() {
    const ctxBar = document.getElementById('myChart').getContext('2d');
    const ctxDonut = document.getElementById('myDonut').getContext('2d');

    new Chart(ctxBar, {
    type: 'bar',
    data: {
        labels: <?php echo json_encode($DC); ?>, // Use the DC array for labels
        datasets: [{
            label: 'les 6 derniers achats', // Set the legend text to "les 7 derniers achats"
            data: <?php echo json_encode($VC); ?>, // Use the VC array for data
            backgroundColor: 'green', // Set the background color to green
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});



    new Chart(ctxDonut, {
      type: 'doughnut',
      data: {
        labels: <?php echo json_encode($NA); ?>, // Use the NA array for labels
        datasets: [{
          label: 'Hot Articles',
          data: <?php echo json_encode($HA); ?>, // Use the HA array for data
          backgroundColor: [
            'rgba(255, 99, 132, 0.7)',
            'rgba(54, 162, 235, 0.7)',
            'rgba(255, 206, 86, 0.7)',
          ], // Add more colors if needed
          borderWidth: 1
        }]
      },
      options: {
        // You can customize options for the doughnut chart here
      }
    });
  });
</script>

</body>
</html>
