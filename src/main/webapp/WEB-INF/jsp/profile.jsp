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
        <a class="nav-link cabin" href="login">Log In</a>
      </li>
      <li class="nav-item">
        <a class="nav-link cabin" href="register">Sign Up</a>
      </li>
    </ul>
    </div>  
</nav>
    

<!-- PET CARD -->

<section class="login">

<div class="container" >
    <div class="row justify-content-md-center">
        <div class="col-sm-6 ">
	<div class="card"> 
	<img class="card-img-top" src="data:image/jpg;base64,${petInfo.showPicture()}" alt="${petInfo.getPetName()}">
		<div class="card-body">
			<h5 class="card-title text-center h2 anton">${petInfo.getPetName()}</h5>
				<a class="btn btn-primary text-center" href="contact">Contact Owner and Emergency Point of Contact</a>
				<h5 style="color: red;">${thankYou}</h5>
				<p class="card-text">Owner's Name:<span class="petInfo"> ${petInfo.getOwner().getFirstName()} ${petInfo.getOwner().getLastName()}</span></p>
				<p class="card-text">Phone Number: <span class="petInfo">${petInfo.getOwner().getPhoneNum()}</span></p>
				<p class="card-text">Emergency Point of Contact:<span class="petInfo"> ${petInfo.getEmergencyPOC()}</span></p>
				<p class="card-text">Phone Number:<span class="petInfo"> ${petInfo.getPOCPhoneNum()}</span></p>
				<p class="card-text">Type: <span class="petInfo">${petInfo.getPetType()}</span></p>
				<p class="card-text">Breed: <span class="petInfo">${petInfo.getBreed()}</span></p>
				<p class="card-text">Birth Date: <span class="petInfo">${petInfo.getBirthday()}</span></p>
				<p class="card-text">Veterinarian: <span class="petInfo">${petInfo.getVetName()}</span></p> 
				<p class="card-text">Address:</p>
				<p class="card-text"><span class="petInfo">${petInfo.getVetStreet()}</span></p>
				<p class="card-text"><span class="petInfo">${petInfo.getVetCity()}, ${petInfo.getVetState()} ${petInfo.getVetZip()}</span></p>
				<p class="card-text">Phone Number: <span class="petInfo">${petInfo.getVetPhoneNum()}</span></p>
				<p class="card-text">Medical Information: <span class="petInfo">${petInfo.getMedicalInfo()}</span></p>
				<p class="card-text">Dietary Information:<span class="petInfo"> ${petInfo.getDietaryInfo()}</span></p>
				<p class="card-text">Medical Information:<span class="petInfo"> ${petInfo.getSpecialInstructions()}</span></p>
	   </div>
	</div>	
	</div>
	</div>
	</div>
 
</section>



<!-- FOOTER -->

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
