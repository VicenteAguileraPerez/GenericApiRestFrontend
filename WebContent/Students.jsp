<!DOCTYPE HTML>
<!--
-->
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Map"%>
<%@ page import="controllers.Prueba" %>

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
						API Students<br />
					</h2>
					<br>
					<div class="row">
						<div class="col-md-12">
							<h4>Registered students</h4>
							<div class="table-responsive">
								<%
								Prueba p = new Prueba();
								JSONArray array = p.readAll("students");							
								%>
								<table id="table_students"
									class="table table-bordred table-striped">
	
									<thead>
										<tr>
											<th>Control number</th>
											<th>Name</th>
											<th>Last name</th>
											<th>Email</th>
											<th>Career</th>
										</tr>
									</thead>
										<%
											for (int i = 0; i < array.length(); i++)
											{
											out.println("<tr>");
											out.println("<th>"+array.getJSONObject(i).getString("control_number") + "</th>");
											out.println("<th>"+array.getJSONObject(i).getString("name") + "</th>");
											out.println("<td>" + array.getJSONObject(i).getString("last") + "</td>");
											out.println("<td>" + array.getJSONObject(i).getString("email") + "</td>");
											out.println("<td>" + array.getJSONObject(i).getString("career") + "</td>");
											out.println("</tr>");
											}
										%>
								</table>
							</div>
	
						</div>
				</div>
				<br>
				
					<button type="submit" value="" class="btn btn-primary btn-lg"
					data-toggle="modal" data-target="#staticBackdrop">Add student
					</button>
				</header>
			</section>

		</section>
		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
			
				<li><a href="https://github.com/SamuelAlanBenitezAlonso" class="icon brands fa-github"><span
						class="label">Github</span> Samuel Alan Ben�tez Alonso</a></li>
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
				Ben�tez Alonso <br /> Salvador Morado Quiroz <br /> Antonio
				Pulido Virrueta
			</p>
			
			<ul class="copyright">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
			
		</footer>

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

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static"
	data-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true" >
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">Register student</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<label for="nombre">Control number:</label> <input type="number" maxlength="10" placeholder="Ingrese N�mero de Control"
						class="form-control" id="inputNumberControl" aria-describedby="campoNumeroControl" 
						oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" required>
					<small id="numeroControlHelp" class="form-text text-muted"></small>
				
					<label for="nombre">Name:</label> <input type="text" maxlength="50" placeholder = "Ingrese Nombre"
						class="form-control" id="inputNombre" aria-describedby="campoNombre" required>
					<small id="nombreHelp" class="form-text text-muted"></small>
					 
					<label
						for="apellido">Last name:</label> <input type="text" maxlength="80" placeholder = "Ingresa Apellido"
						class="form-control" id="inputApellido"
						aria-describedby="campoApellido" required> <small id="apellidoHelp"
						class="form-text text-muted"></small> 
									
					<label for="selectCarreras">Career:</label>
    					<select class="form-control" id="selectCarrera">
    					  <option>Select an option...</option>
      					  <option>Ing.En Sistemas Computacionales</option>
					      <option>Ing.Civil</option>
					      <option>Ing.En Mecatr�nica</option>
					      <option>Ing.En Electr�nica</option>
					      <option>Ing.En Administraci�n</option>
					      <option>Ing.En Industr�as Alimentarias</option>
					      <option>Ing.Mec�nica</option>
					      <option>Ing.En Industrial</option>
    				</select>	
    				
    				
    				<label for="edad">age:</label> <input type="number" maxlength="3" placeholder="Ingrese Edad"
						class="form-control" id="inputEdad" aria-describedby="campoEdad" 
						oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" required>
					<small id="edadHelp" ></small> 
					
					<label for="fechaNacimiento">Birthday:</label><br>					
					<input type="date" id="inputFechaNacimiento" name="trip-start" max="2039-01-01"><br>
					
					<label
						for="direccion">Address:</label> <input type="text" maxlength="150" placeholder = "Ingresa Direcci�n"
						class="form-control" id="inputDireccion"
						aria-describedby="apellidoHelp" required> <small id="direccionHelp"
						class="form-text text-muted"></small> 
						
					<label
						for="ciudad">City:</label> <input type="text" placeholder = "Ingresa Ciudad"
						class="form-control" id="inputCiudad"
						aria-describedby="apellidoHelp" required> <small id="ciudadHelp"
						class="form-text text-muted"></small>
						
					<label
						for="estado">State:</label> <input type="text" placeholder = "Ingresa Estado"
						class="form-control" id="inputEstado"
						aria-describedby="estadoHelp" required> <small id="estadoHelp"
						class="form-text text-muted"></small>	 
															
					<label
						for="inputEmail">Email:</label> <input type="email" placeholder = "Ingrese Correo Electronico"
						class="form-control" id="inputEmail"
						aria-describedby="emailHelp" required> <small id="emailHelp"
						class="form-text text-muted"></small>
						
						
					<label for="notas">Notes:</label>
    				<textarea class="form-control" id="inputNotas" rows="5"></textarea>
					   				    			
    				
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
				<button type="button" class="btn btn-primary">Agregar Alumno</button>
			</div>
		</div>
	</div>
</div>
</html>