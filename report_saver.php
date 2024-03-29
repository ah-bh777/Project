<?php
include("index.php");

$id = $_GET['id'];
$user = $_GET['user'];

$result = mysqli_query($conn, "INSERT INTO histoire_rapport(id_client, user) VALUES ('$id', '$user')");

if ($result) {
    echo "added";
} else {
    echo "error";
}

?>
