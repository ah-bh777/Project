<?php 
include("index.php");


$user = isset($_GET['user']) ? $_GET['user'] : "user1";

ob_start();
if (!$user) {
   header("Location: login.php");
   ob_end_flush(); 
   exit; 
}

$result = mysqli_query($conn,"SELECT * FROM users WHERE login = '$user'");
if ($res = mysqli_fetch_array($result)) {
    $resName = $res['nom'];
} else {
    
    header("Location: login.php");
    exit; 
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Historique</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style >
   @import url('./nav_effects.css');
 
   .profile_pic {
    width: 100px; /* Adjust the width as needed */
    height: 100px; /* Adjust the height as needed */
    overflow: hidden;
    border-radius: 50%;
    border: 2px solid white; /* Add a white border with 2px width */
    margin: auto; /* Center the profile picture horizontally */
    display: block; /* Ensure the profile picture is displayed as a block element */
}
.nav.side-menu > li > ul.nav.child_menu > li > a:hover {
    background-color: transparent !important; /* Remove background color on hover */
    color: inherit !important; /* Inherit text color */
    text-decoration: none !important; /* Remove underline on hover */
}


  </style>
</head>
<body>

<div class="navbar" style="justify-content: flex-end;">
  <div class="toggle-btn" onclick="toggleSidebar()">
    <i class="fa fa-bars fa-2x"></i>
  </div>
  
 
  <!-- Dropdown integration -->
  <div class="dropdown">
    <div class="user-circle" onclick="toggleDropdown()">
      <img src="OIP.jpg" alt="User Image">
      <div class="user-name"><?= $resName ?></div>
      
    </div>
    <div class="dropdown-content" id="dropdownContent">
      <a href="#">Profile</a>
      <a href="#" onclick="window.location.href ='login.php'">Logout</a>
      <a href="#">Help</a>
    </div>
  </div>
</div>

<div class="sidebar-container">
  <div class="sidebar sidebar-hidden">
    <div class="menu_section">
<br>
<div class="profile clearfix">
   
<div class="profile_pic">
                <img src="OIP.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>     Bienvenue,</span>
                <h2>  Compte <?= $user ?></h2>
              </div>
            </div>
  <br>
      <h3>General</h3>
      <ul class="nav side-menu">
        <li>
          <a>
            <i class="fa fa-bar-chart-o"></i> Tableau de bord       <span class="fa fa-chevron-down"></span>
          </a>
          <ul class="nav child_menu">
          <li><a href="theOfficial_chart_page.php?user=<?= $user ?>">TB</a></li>
          </ul>
        </li>
        <li>
          <a>
            <i class="fa fa-user"></i> Client devis                <span class="fa fa-chevron-down"></span>
          </a>
          <ul class="nav child_menu">
          <li><a href="theOfficial_add_client_devis.php?user=<?= $user ?>">Ajouter client devis</a></li>
            <li><a href="theOfficial_list_client.php?user=<?=$user?>">Lister les commandes de client</a></li>
          </ul>
        </li>
        <li>
          <a>
            <i class="fa fa-check-square-o"></i> Article                        <span class="fa fa-chevron-down"></span>
          </a>
          <ul class="nav child_menu">
          <li><a href="theOfficial_add_article.php?user=<?=$user?>">Ajouter article</a></li>
            <li><a href="theOfficial_list_article.php?user=<?=$user?>">Lister les articles                   </a></li>
          </ul>
        </li>
        <li>
    <a>
      <i class="fa fa-file-text-o"></i>Mes rapports              <span class="fa fa-chevron-down"></span>
    </a>
    <ul class="nav child_menu">
      <li><a href="theOfficial_report_history.php?user=<?= $user ?>">Consulter l'historique</a></li>
    </ul>
  </li>
      </ul>
      
    </div>

   
  </div>
</div>


<div class="content">
  
<?php
$_GET['user'] = $user;
include('report_history_page.php');
?>
</div>

<script>

function toggleDropdown() {
  var dropdownContent = document.getElementById('dropdownContent');
  dropdownContent.style.display = (dropdownContent.style.display === 'block') ? 'none' : 'block';
}

// Close dropdown when clicking outside
window.onclick = function(event) {
  var dropdownContent = document.getElementById('dropdownContent');
  if (event.target.closest('.dropdown') === null && dropdownContent.style.display === 'block') {
    dropdownContent.style.display = 'none';
  }
}

function toggleSidebar() {
  var sidebar = document.querySelector('.sidebar');
  var content = document.querySelector('.content');
  var toggleBtn = document.querySelector('.toggle-btn');
  var isOpen = !sidebar.classList.contains('sidebar-hidden');
  
  sidebar.classList.toggle('sidebar-hidden');
  if (sidebar.classList.contains('sidebar-hidden')) {
    content.style.maxWidth = '100%';
    content.style.marginLeft = '0';
    toggleBtn.style.left = '20px';
    localStorage.setItem('sidebarState', 'closed'); // Store sidebar state as 'closed'
  } else {
    content.style.maxWidth = 'calc(100% - ' + sidebar.offsetWidth + 'px)';
    content.style.marginLeft = sidebar.offsetWidth + 'px';
    toggleBtn.style.left = (sidebar.offsetWidth + 20) + 'px';
    localStorage.setItem('sidebarState', 'open'); // Store sidebar state as 'open'
  }
}


window.onload = function() {
  var sidebarState = localStorage.getItem('sidebarState');
  if (sidebarState === 'open') {
    toggleSidebar(); // If sidebar state is 'open' in localStorage, toggle sidebar
  }
};



  function toggleChildMenu(event) {
    event.preventDefault();
    var parentMenuItem = event.target.closest('.nav > li');
    var childMenu = parentMenuItem.querySelector('.nav.child_menu');

    childMenu.classList.toggle('open');

    if (childMenu.classList.contains('open')) {
      childMenu.style.display = 'block';
      setTimeout(function() {
        childMenu.style.height = childMenu.scrollHeight + 'px';
      }, 10);
    } else {
      childMenu.style.height = childMenu.scrollHeight + 'px';
      setTimeout(function() {
        childMenu.style.height = '0';
      }, 10);
    }
  }

  var parentMenuItems = document.querySelectorAll('.nav.side-menu > li > a');
  parentMenuItems.forEach(function(item) {
    item.addEventListener('click', toggleChildMenu);
  });


</script>
</body>
</html>



