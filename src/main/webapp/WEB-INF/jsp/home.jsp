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
          <a class="nav-link cabin" href="index">Sign out</a>
        </li>
      </ul>
    </div>
</nav>
    
 <!-- SIDE NAV -->
    
  <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column" style="padding-top:10px;">
                 <h5 class="card-title cabin text-center">Hello, ${loggedInCustomer.getFirstName()} ${loggedInCustomer.getLastName()}!</h5> <hr>  
               <li class="nav-item">
               <p class="card-title cabin">Your Contact Info</p>
                <p class="card-text cabin">${loggedInCustomer.getStreet()}<br>
                ${loggedInCustomer.getAptNum()}<br>
            	${loggedInCustomer.getCity()}, ${loggedInCustomer.getState()} ${loggedInCustomer.getZip()}<br>
                ${loggedInCustomer.getPhoneNum()}</p>
              </li>
             <li class="nav-item">
                <a class="nav-link anton" href="#">
                 <i class="far fa-address-card" style="color: Dodgerblue;"></i>
					Edit Contact Info
                </a>
              <li class="nav-item">
                <a class="nav-link anton" href="add">
                  <i class="fas fa-plus" style="color: Dodgerblue;"></i>
					Add Pet
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link anton" href="#">
                  <span data-feather="shopping-cart"></span>
                  Shop
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link anton" href="#">
                  <span data-feather="users"></span>
                  Sign Out
                </a>
              </li>
            </ul>

          </div>
        </nav>
        
<!-- END SIDE NAV -->

<!-- MAIN PAGE -->

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2 anton">My Pets</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
              <i class="fas fa-plus" style="color: Dodgerblue;"></i>
                <a class="anton" href="add">Add Pet</a>
              </div>
            </div>
            </div>

 <div class="card-columns minHeight">
 
 <!-- PET LIST START -->
<c:forEach items="${petList}" var="p">
	<div class="card"> 
	<img class="card-img-top" src="data:image/jpg;base64,${p.showPicture()}" alt="${p.getPetName()}">
		<div class="card-body">
			<h5 class="card-title text-center h2 anton">${p.getPetName()}</h5>
				<p class="card-text">Pet ID Number: <span class="petInfo">${p.getPetID()}</span></p>
				<p class="card-text">Type: <span class="petInfo">${p.getPetType()}</span></p>
				<p class="card-text">Breed: <span class="petInfo">${p.getBreed()}</span></p>
				<p class="card-text">Birth Date: <span class="petInfo">${p.getBirthday()}</span></p>
				<p class="card-text">Owner's Name: <span class="petInfo">${p.getOwner().getFirstName()} ${p.getOwner().getLastName()}</span></p>
				<p class="card-text">Phone Number: <span class="petInfo">${p.getOwner().getPhoneNum()}</span></p>
				<p class="card-text">Emergency Point of Contact: <span class="petInfo"">${p.getEmergencyPOC()}</span></p>
				<p class="card-text">Phone Number: <span class="petInfo">${p.getPOCPhoneNum()}</span></p>
				<p class="card-text">Veterinarian: <span class="petInfo">${p.getVetName()}</span></p> 
				<p class="card-text">Address:</p> 
				<p class="card-text"><span class="petInfo">${p.getVetStreet()}</span></p>
				<p class="card-text"><span class="petInfo">${p.getVetCity()}, ${p.getVetState()} ${p.getVetZip()}</span></p>
				<p class="card-text">Phone Number: <span class="petInfo">${p.getVetPhoneNum()}</span></p>
				<p class="card-text">Medical Information: <span class="petInfo"> ${p.getMedicalInfo()}</span></p>
				<p class="card-text">Dietary Information: <span class="petInfo">${p.getDietaryInfo()}</span></p>
				<p class="card-text">Medical Information: <span class="petInfo">${p.getSpecialInstructions()}</span></p>
	   </div>
	   <div class="card-footer">
		    <a class="btn btn-primary" href="edit?petId=${p.getPetID()}">Edit Pet</a>
		    <a class="btn btn-primary text-right" href="delete?petId=${p.getPetID()}">Remove Pet</a>
		</div>
	</div>

</c:forEach>

<!-- PET LIST END -->
 
</div>
                    
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

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
          datasets: [{
            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script>    
    
</body>
</html>
