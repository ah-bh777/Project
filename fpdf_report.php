<?php
require_once('./TCPDF-main/tcpdf.php');
include("index.php");

$id = $_GET['id_report'];

// Retrieve vente data
$result1 = mysqli_query($conn, "SELECT * FROM vente WHERE id = $id");
$row1 = mysqli_fetch_array($result1);
$client = $row1["client"];
$num = $row1["num"]; 
$projet = $row1["projet"];    
$categorie = $row1["categorie"];    
$description = $row1["description"];    
$statut = $row1["statut"];
$date_creation = $row1["date_creation"];
$user = $row1["user"];

// Retrieve client data
$result2 = mysqli_query($conn, "SELECT * FROM client WHERE client = '$client'");
$row2 = mysqli_fetch_array($result2);
$ice = $row2["ice"]; 
$tel = $row2["tel"];
$adresse = $row2["adresse"];

// Create new TCPDF instance
$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);

// Set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Author Name');
$pdf->SetTitle('Title');
$pdf->SetSubject('Subject');
$pdf->SetKeywords('Keywords');

// Add a page
$pdf->AddPage();

// Set font
$pdf->SetFont('helvetica', '', 10);

// Display vente data
$pdf->Cell(50, 7, 'Client:', 0, 0, 'R');
$pdf->Cell(50, 7, $client, 0, 1, 'L');
$pdf->Cell(50, 7, 'ICE:', 0, 0, 'R');
$pdf->Cell(50, 7, $ice, 0, 1, 'L');
$pdf->Cell(50, 7, 'Tel:', 0, 0, 'R');
$pdf->Cell(50, 7, $tel, 0, 1, 'L');
$pdf->Cell(50, 7, 'Adresse:', 0, 0, 'R');
$pdf->Cell(50, 7, $adresse, 0, 1, 'L');
$pdf->Ln(); // Add a line break

// Display vente information
$pdf->Cell(50, 7, 'Num:', 0, 0, 'R');
$pdf->Cell(50, 7, $num, 0, 0, 'L');
$pdf->Cell(50, 7, 'Projet:', 0, 0, 'R');
$pdf->Cell(50, 7, $projet, 0, 0, 'L');
$pdf->Cell(50, 7, 'Categorie:', 0, 0, 'R');
$pdf->Cell(50, 7, $categorie, 0, 1, 'L');
$pdf->Cell(50, 7, 'Description:', 0, 0, 'R');
$pdf->Cell(50, 7, $description, 0, 0, 'L');
$pdf->Cell(50, 7, 'Statut:', 0, 0, 'R');
$pdf->Cell(50, 7, $statut, 0, 1, 'L');
$pdf->Cell(50, 7, 'Date Creation:', 0, 0, 'R');
$pdf->Cell(50, 7, $date_creation, 0, 0, 'L');
$pdf->Cell(50, 7, 'User:', 0, 0, 'R');
$pdf->Cell(50, 7, $user, 0, 1, 'L');
$pdf->Ln(); // Add a line break

// Retrieve vente article data
$result3 = mysqli_query($conn, "SELECT * FROM vente_article WHERE id_vente = '$id'");

$html = '<table border="1">
            <tr>
                <th>Code</th>
                <th>Article</th>
                <th>Unité</th>
                <th>Prix HT</th>
                <th>Quantité</th>
                <th>Total HT</th>
                <th>TVA</th>
                <th>Prix TTC</th>
            </tr>';

$rowCount = 0; // Initialize row count

while ($row = mysqli_fetch_array($result3)) {
    $total_ht = $row["prix_ht"] * $row["quantite"];
    $prix_ttc = $total_ht + $total_ht * $row["tva"];

    // Add rows to the current page
    $html .= '<tr>
                <td>' . $row["code"] . '</td>
                <td>' . $row["article"] . '</td>
                <td>' . $row["unite"] . '</td>
                <td>' . $row["prix_ht"] . '</td>
                <td>' . $row["quantite"] . '</td>
                <td>' . $total_ht . '</td>
                <td>' . $row["tva"] . '</td>
                <td>' . $prix_ttc . '</td>
              </tr>';

    // Increment row count
    $rowCount++;

    // Check if row count exceeds 9
    if ($rowCount >= 9) {
        // Close the current page
        $html .= '</table>';

        // Write HTML content to PDF
        $pdf->writeHTML($html, true, false, true, false, '');

        // Add a new page
        $pdf->AddPage();

        // Reset row count
        $rowCount = 0;

        // Add table header to the new page
        $html = '<table border="1">
                    <tr>
                        <th>Code</th>
                        <th>Article</th>
                        <th>Unité</th>
                        <th>Prix HT</th>
                        <th>Quantité</th>
                        <th>Total HT</th>
                        <th>TVA</th>
                        <th>Prix TTC</th>
                    </tr>';
    }
}

// Close the last table
$html .= '</table>';

// Write HTML content to PDF
$pdf->writeHTML($html, true, false, true, false, '');

// Output PDF
$pdf->Output('example.pdf', 'I');
?>
