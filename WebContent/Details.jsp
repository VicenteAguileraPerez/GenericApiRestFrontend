<!DOCTYPE HTML>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

<%@page import="java.util.Map"%>
<html>
<head>
<title>API Students and Subject</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="landing is-preload">
	<div id="page-wrapper">
		<!-- Header -->
		<header id="header" class="alt">
			<nav id="nav">
				<ul>
					<li><a class="button" href="index.html">Home</a></li>

				</ul>
			</nav>
		</header>
		<!-- Banner -->
		<section id="banner">
			<h2>School Control of ITSU</h2>
			<p>API developed by students from ITSU</p>
		</section>

		<!-- Main -->
		<section id="main" class="container">

			<section class="box special">
				<header class="major">
					<h2>
						API Students <br />
					</h2>
					<br>
					
					<div class="row">
						<div class="col-md-12">
							<h4>Update Student</h4>
													
								<div class="container"> <!-- Inicio class Container -->
								
																	
									<form action="<%=request.getContextPath()%>/studentController?page=update&idStudent="<%=request.getParameter("control-number") %> method="get">
	
									<label for="controlNombre">Control Number:</label> <input type="number" maxlength="50" placeholder="Enter control number"
										class="form-control" id="updateNumberControl" aria-describedby="fieldNumberControl" name="updateControlNumber" 
										oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" required>
									<small id="controNumberlHelp" class="form-text text-muted"></small>
								
									<label for="name">Name:</label> <input type="text" maxlength="50" placeholder = "Enter name"
										class="form-control" id="updateName" aria-describedby="fieldName" name = "updateName" required>
									<small id="nameHelp" class="form-text text-muted"></small>
									 
									<label
										for="lastName">Last Name:</label> <input type="text" maxlength="80" placeholder = "Enter last name"
										class="form-control" id="updateName" name = "updatLastName"
										aria-describedby="fieldLastName" required> <small id="lastNameHelp"
										class="form-text text-muted"></small> 
													
									<label for="selectCareer">Career:</label>
				    					<select class="form-control" id="updaeteSelectCareer" name = "career">
				    					  <option>Select an option...</option>
				      					  <option>Ing.En Sistemas Computacionales</option>
									      <option>Ing.Civil</option>
									      <option>Ing.En Mecatronica</option>
									      <option>Ing.En Electronica</option>
									      <option>Ing.En Administracion</option>
									      <option>Ing.En Industrias Alimentarias</option>
									      <option>Ing.Mecanica</option>
									      <option>Ing.En Industrial</option>
				    				</select>	
				    				
				    				
				    				<label for="age">Age:</label> <input type="number" maxlength="3" placeholder="Enter age"
										class="form-control" id="updateAge" aria-describedby="fieldAge" name = "updateAge" 
										oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" required>
									<small id="ageHelp" ></small> 
									
									<label for="birthday">Birthday:</label><br>					
									<input type="date" id="updateBirthday" name="updateBirthday" max="2039-01-01" ><br>
									
									<label
										for="address">Address:</label> <input type="text" maxlength="150" placeholder = "Enter address"
										class="form-control" id="updateAddress" name = "updateAddress"
										aria-describedby="addressHelp" required> <small id="addressHelp"
										class="form-text text-muted"></small> 
										
									<label
										for="city">City:</label> <input type="text" placeholder = "Enter city"
										class="form-control" id="updateCity" name = "updateCity"
										aria-describedby="cityHelp" required> <small id="cityHelp"
										class="form-text text-muted"></small>
										
									<label
										for="state">State:</label> <input type="text" placeholder = "Enter state"
										class="form-control" id="updateState" name="updateState"
										aria-describedby="stateHelp" required> <small id="stateHelp"
										class="form-text text-muted"></small>	 
																			
									<label
										for="inputEmail">Email:</label> <input type="email" placeholder = "Enter email"
										class="form-control" id="updateEmail" name ="updateEmail"
										aria-describedby="emailHelp" required> <small id="emailHelp"
										class="form-text text-muted"></small>
										
										
									<label for="notes">Notes:</label>
				    				<textarea class="form-control" id="updateNotes" rows="5" name ="notes"></textarea>
									   				    			
				    				<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Return</button>
										<button type="submit" class="btn btn-primary">Update Student</button>
									</div>
								</form>	
									<button type="button" value="" class="btn btn-primary btn-lg"
									data-toggle="modal" data-target="#confirmModal">Delete student
									</button>
								</div> <!-- Fin class Container -->
						</div>
					</div>
				</header>

			</section>
		</section>
		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
			
			<li><a href="https://github.com/SamuelAlanBenitezAlonso" class="icon brands fa-github"><span
					class="label">Github</span> Samuel Alan Benítez Alonso</a></li>
						<br>

				
			<li><a href="https://github.com/SalvadorMoradoQuiroz" class="icon brands fa-github"><span
					class="label">Github</span> Salvador Morado Quiroz</a></li>
						<br>
						
			<li><a href="https://github.com/VicenteAguileraPerez" class="icon brands fa-github"><span
					class="label">Github</span> Vicente Aguilera Perez</a></li>
					    <br>
					
			<li><a href="https://github.com/Pulido1307" class="icon brands fa-github"><span
					class="label">Github</span> Antonio Pulido Virrueta</a></li>
					   <br>
			</ul>
					
			<p class = "copyright">
				La presente web app fue desarrollada por los siguientes
				estudiantes del Instituto Tecnologico Superior de Uruapan:<br/>Vicente Aguilera Perez<br /> Samuel Alan
				Benítez Alonso <br /> Salvador Morado Quiroz <br /> Antonio
				Pulido Virrueta
			</p>
			
			<ul class="copyright">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
			
			
		</footer>

	</div>
	
<!-- Modal Confirm Modal -->
<div class="modal" tabindex="-1" id="confirmModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Are you sure to delete?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>The selected student will be deleted. Are you sure to delete it?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
		<form action="<%=request.getContextPath()%>/studentController?page=delete&idStudent="<%=request.getParameter("control-number") %> method="get">
        	<button type="submit" class="btn btn-primary">Yes</button>
        </form>
      </div>
    </div>
  </div>
</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
		integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
		crossorigin="anonymous">
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>

</html>