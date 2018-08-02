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
    
<link rel="stylesheet" href="../style/style.css">
    
<link href="https://fonts.googleapis.com/css?family=Anton|Cabin" rel="stylesheet">
    
<script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9" crossorigin="anonymous"></script>

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
          <a class="nav-link cabin" href="">Sign out</a>
        </li>
      </ul>
    </div>  
</nav>
    
    
<!--ADD PET-->

<header class="login">
<div class="container">
  <div class="row">
    <div class="col-md-6 offset-md-3">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Add a Pet</h2>
          </div>
          <div class="text-center col-lg-12"> 
          
 <!-- FORM START -->
         
   <form:form class="text-left" action="/add" method="POST" modelAttribute="pet">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputPetName">Pet Name</label>
      <form:input type="text" path="petName" class="form-control" id="inputPetName" placeholder="Pet Name"/>
    </div>
    <div class="form-group col-md-6">
    <label for="inputPetType">Pet Type</label>
    <form:select class="form-control" path="petType" id="inputPetType">
      <option>Dog</option>
      <option>Cat</option>
        </form:select>
        </div>
    </div>
    <div class="form-row">
  <div class="form-group col-md-6">
    <label for="inputBreed">Breed</label>
    <form:input type="text" path="breed" class="form-control" id="inputBreed" placeholder="Breed"/>
  </div>
  <div class="form-group col-md-6">
    <label for="inputBirthday">Birth Date</label>
    <form:input type="text" path="birthday" class="form-control" id="inputBirthday" placeholder="Birth Date"/>
  </div>
</div>
  <div class="form-row">
        <div class="col-md-12">
       <h5>Emergency Point of Contact</h5>
      </div>
    <div class="form-group col-md-12">
      <label for="inputEmergencyPOC">Name</label>
      <form:input type="text" path="emergencyPOC" class="form-control" id="inputEmergencyPOC" placeholder="Emergency POC"/>
    </div>

    <div class="form-group col-md-12">
      <label for="inputPOCPhoneNum">Phone Number</label>
      <form:input type="text" path="POCPhoneNum" class="form-control" id="inputPOCPhoneNum"/>
    </div>
  </div>
      <div class="form-row">
    <div class="col-md-12">
       <h5>Veterinary Information</h5>
    </div>
    <div class="form-group col-md-12">
      <label for="inputOfficeName">Office Name</label>
      <form:input type="text" path="vetName" class="form-control" id="inputOfficeName" placeholder="Office Name"/>
    </div>
  <div class="form-group col-md-12">
    <label for="inputOfficeStreet">Office Address</label>
    <form:input type="text" path="vetStreet" class="form-control" id="inputOfficeStreet" placeholder="1234 Main St"/>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputOfficeCity">City</label>
      <form:input type="text" path="vetCity" class="form-control" id="inputOfficeCity"/>
    </div>
    <div class="form-group col-md-4">
      <label for="inputOfficeState">State</label>
      <form:input type="text" path="vetState" class="form-control" id="inputState"/>
    </div>
    <div class="form-group col-md-2">
      <label for="inputOfficeZip">Zip</label>
      <form:input type="text" path="vetZip" class="form-control" id="inputOfficeZip"/>
    </div>
  </div>
    <div class="form-group col-md-12">
      <label for="inputOfficePhoneNum">Office Phone Number</label>
      <form:input type="text" path="vetPhoneNum" class="form-control" id="inputOfficePhoneNum"/>
    </div>
    <div class="form-group col-md-12">
      <label for="inputMedicalInfo">Medical Information</label>
      <form:input type="text" path="medicalInfo" class="form-control" id="inputMedicalInfo"/>
    </div>
    <div class="form-group col-md-12">
      <label for="inputDietaryInfo">Dietary Information</label>
      <form:input type="text" path="dietaryInfo" class="form-control" id="inputDietaryInfo"/>
    </div>
    <div class="form-group col-md-12">
      <label for="inputSpecialInstructions">Special Instructions</label>
      <form:input type="text" path="specialInstructions" class="form-control" id="inputSpecialInstructions"/>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Add Pet</button>
</form:form>
            <!-- END FORM --> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</header>

    

<div class="well"> </div>

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
