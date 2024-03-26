<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Custom CSS -->
  <style>
    body {
      background: url("BlackRock-investment-shutterstock_1324038479.jpg") center/cover fixed; /* Background image with cover and fixed position */
      background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black overlay */
      color: #fff;
      font-family: Arial, sans-serif;
      display: flex; /* Use flexbox to center content */
      align-items: center; /* Center vertically */
      justify-content: center; /* Center horizontally */
      height: 100vh; /* Full viewport height */
      margin: 0; /* Remove default margin */
    }
    .login-container {
      width: 350px; /* Adjusted width */
      padding: 40px;
      background-color: rgba(255, 255, 255, 0.5); /* Lighter and semi-transparent background */
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }
    .login-form {
      margin-bottom: 20px;
    }
    .login-form input[type="text"],
    .login-form input[type="password"] {
      border-radius: 0;
      background-color: rgba(255, 255, 255, 0.6); /* Lighter and semi-transparent input background */
      border: 1px solid rgba(255, 255, 255, 0.6); /* Lighter and semi-transparent input border */
      color: #000; /* Black text color */
    }
    .login-form input[type="text"]::placeholder,
    .login-form input[type="password"]::placeholder {
      color: #555; /* Placeholder text color */
    }
    .login-form input[type="submit"] {
      border-radius: 0;
    }
    .login-form input[type="submit"]:hover {
      background-color: #ccc; /* Light gray hover color for button */
      border-color: #ccc; /* Light gray hover color for button border */
    }
    .login-form input[type="submit"]:focus {
      outline: none; /* Remove focus outline */
    }
    .login-container h2 {
      color: #000; /* Black header text color */
      text-align: center;
      margin-bottom: 20px;
    }
    .login-container p {
      color: #666; /* Light gray text color for paragraph */
      text-align: center;
    }
    .login-container p a {
      color: #fff; /* White color for anchor text */
    }
    .login-container p a:hover {
      text-decoration: underline; /* Underline on hover for anchor text */
    }
  </style>
</head>
<body>

<div class="login-container">
  <h2>Login</h2>
  <div class="login-form">
    <div class="form-group">
      <input type="text" id="email" class="form-control" placeholder="Username" required>
    </div>
    <div class="form-group">
      <input type="password" id="password" class="form-control" placeholder="Password" required>
    </div>
    <button type="button" id="loginBtn" class="btn btn-primary btn-block">Login</button>
  </div>
  <p>Don't have an account? <a href="#">Sign Up</a></p>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
  $(document).ready(function() {
    $('#loginBtn').click(function() {
      var email = $('#email').val();
      var password = $('#password').val();
      $.ajax({
        url: "login_server.php",
        type: "POST",
        data: {
          email: email,
          password: password
        },
        success: function(data) {
          if (data == "nope") {
            alert("There is no such email or password.");
          } else {
            window.location.href = "theOfficial_ajouter_article.php?user=" + email;
          }
        },
        error: function() {
          alert("An error occurred during the login process.");
        }
      });
    });
  });
</script>


</body>
</html>
