<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>DogTags</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    
<link rel="stylesheet" href="/style/style.css">
    
<link href="https://fonts.googleapis.com/css?family=Anton|Cabin" rel="stylesheet">
    
<script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9" crossorigin="anonymous"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>    
    
<body>
    
<!-- NAV -->
<nav class="navbar navbar-expand-lg navbar-light bg-white">
  <a class="navbar-brand anton" href="/">
    <span style="color: Dodgerblue;">
    <i class="fas fa-tags"></i>
    DogTags
    </span>
  </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link cabin" href="#">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link cabin" href="login">Log In</a>
      </li>
      <li class="nav-item">
        <a class="nav-link cabin" href="register">Sign Up</a>
      </li>
    </ul>
    </div>  
</nav>
    
    
    
<!--HEADER-->
<header>
<div class="container">
<div class="backgroundPic"></div>
<div class="row">
    <div class="col-md-12">
  <h1 class="display-3 text-center anton">Have you found a pet that needs help?</h1>
    </div>
    </div>
    <br>
<div class="row justify-content-md-center">
    <div class="col-md-5">
    <h2 class="anton">You've come to the right place.</h2>
</div>
<div class="col-md-5 cabin">
<div class="row justify-content-md-center">
    <div class="col-md-5">
    <h5 style="color: red;">${notFound}</h5>
</div>

    <form:form role="form" modelAttribute="pet" action="findPet" class="text-right" method="POST">
        <div class="form-group">
            <label for="petID">Please enter the ID number from the pet's DogTags collar tag below.</label>
            <form:input path="petID" class="form-control text-right" id="petID" name="petID" placeholder="ID Number"/>
    </div>
        <input class="btn btn-primary" type="submit" value="Get Info">
  </form:form>    
</div>
</div> 
</div>
</header>

<hr>
    
<!--SECTION-1 -->
<section class="bg-white">
<div class="container">
<br>
    <div class="row">
      <div class="col-lg-12 page-header text-center">
        <h2 class="anton">Testimonials</h2>
        <br>
      </div>
    </div>
    
<div class="container">
  
    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <img class="card-img-top" src="https://media.istockphoto.com/photos/group-of-dogs-playing-in-the-park-picture-id520616386?k=6&m=520616386&s=612x612&w=0&h=z0KDnwgElvIKDJfelPKHm4Hev4lMR5dlw4YrWNFbBzI=" alt="Sierra">
                <div class="card-body">
                    <h5 class="card-title">Meet Sierra</h5>
                    <p class="card-text">Sierra was staying with a friend while her owners were gone on an adventure vacation. Sierra decided to take an adventure of her own. Thanks to DogTags, Sierra was reconnected with her dogsitter in less than an hour.</p>
                    <a href="#" class="btn btn-primary">Read Sierra's Story</a>
                </div>
            </div>
            <br>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <img class="card-img-top" src="https://media3.s-nbcnews.com/i/newscms/2015_25/631766/dog-owner-loyalty-stock-today-tease-150616_da8bfd008fdbabfe02d17950b18da6f8.jpg" alt="Charlie">
                 <div class="card-body">
                     <h5 class="card-title">Meet Charlie</h5>
                     <p class="card-text">Charlie is no fan of fireworks. With his parents away for the weekend, Charlie was in distress and needed professional help. DogTags enabled his rescuer to access Charlie's emergency information to get him the help he needed. </p>
                    <a href="#" class="btn btn-primary">Read Charlie's Story</a>
                </div>
            </div>
           <br>
      </div>
    </div>
    
</div>
</div>
</section>

<footer class="bg-primary">
    <div class="container">
      <div class="row">
        <div class="col-12 col-md">
            <span style="font-size: 48px; color: #fff;">
            <i class="fas fa-tags"></i>
            </span>
          <h5 class="text-white">DogTags</h5>
        </div>
        <div class="col-6 col-md">
          <h5 class="text-white">About Us</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-white" href="#">Why DogTags</a></li>
            <li><a class="text-white" href="#">How it works</a></li>
            <li><a class="text-white" href="#">Stats</a></li>
            <li><a class="text-white" href="#">Future</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5 class="text-white">Shop DogTags</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-white" href="#">Order Tags</a></li>
            <li><a class="text-white" href="#">DogTags Store</a></li>
            <li><a class="text-white" href="#">Donate</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5 class="text-white">Your DogTags</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-white" href="#">Login</a></li>
            <li><a class="text-white" href="#">Sign Up</a></li>
            <li><a class="text-white" href="#">My Pets</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5 class="text-white">Contact Us</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-white" href="#">Team</a></li>
            <li><a class="text-white" href="#">Locations</a></li>
            <li><a class="text-white" href="#">Privacy</a></li>
            <li><a class="text-white" href="#">Terms</a></li>
          </ul>
        </div>
      </div>
    </div>
    </footer>
<!-- / FOOTER --> 


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
    
</body>
</html>

