<!DOCTYPE HTML>
<!--
	Modificado por Polar<3
-->
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
			<h2>Control Escolar ITSU</h2>
			<p>API desarrollada por estudiantes del ITSU</p>
		</section>

		<!-- Main -->
		<section id="main" class="container">

			<section class="box special">
				<header class="major">
					<h2>
						APIS Students and Subject <br />
					</h2>
					<br>
					
					<div class="row">
						<div class="col-md-12">
							<h4>Alumnos Registrados</h4>
													
								<div class="container"> <!-- Inicio class Container -->
										<div class="row">
											
									        
									        <div class="col-md-12">
									       
									        <div class="table-responsive">
									
									                
									              <table id="mytable" class="table table-bordred table-striped">
									                   
									                   <thead>
									                   
									                   <tr><th><input type="checkbox" id="checkall"></th>
									                   <th>Nombre</th>
									                   <th>Apellidos</th>
									                   <th>Email</th>
									                   <th>Numero de Telefono</th>
									                   <th>Edit</th>
									                   <th>Delete</th>
									                   </tr></thead>
									    <tbody>
									    
									    <tr>
									    <td><input type="checkbox" class="checkthis"></td>
									    <td>Vicente</td>
									    <td>Aguilera</td>
									    <td>Aguilera@gmail.com</td>
									    <td>4532342123</td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"><span class="glyphicon glyphicon-trash"></span></button></p></td>
									    </tr>
									    
									 <tr>
									    <td><input type="checkbox" class="checkthis"></td>
									    <td>Pulido</td>
									    <td>Virrueta</td>
									    <td>Pulideus@gmail.com</td>
									    <td>4523454344</td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"><span class="glyphicon glyphicon-trash"></span></button></p></td>
									    </tr>
									    
									    
									 <tr>
									    <td><input type="checkbox" class="checkthis"></td>
									    <td>Alan</td>
									    <td>Benitez</td>
									    <td>Chale@gmail.com</td>
									    <td>4521231223</td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"><span class="glyphicon glyphicon-trash"></span></button></p></td>
									    </tr>
									    
									    
									    
									 <tr>
									    <td><input type="checkbox" class="checkthis"></td>
									    <td>Salvador</td>
									    <td>Morado</td>
									    <td>Chava@gmail.com</td>
									    <td>4523451234</td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
									    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"><span class="glyphicon glyphicon-trash"></span></button></p></td>
									    </tr>
									    
									    </tbody>
									        
									</table>
									
							
									                
									            </div>
									            
									        </div>
										</div>
							</div> <!-- Fin class Container -->
							
							<div class="modal fade in" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" style="display: none;"> <!-- Inicio class modal fade -->
									      <div class="modal-dialog">
									    <div class="modal-content">
									          <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
									        <h4 class="modal-title custom_align" id="Heading">Actualizar Datos</h4>
									      </div>
									          <div class="modal-body">
											        <div class="form-group">
											        <input class="form-control " type="text" placeholder="Nuevo Nombre">
											        </div>
											        
											        <div class="form-group">
											        <input class="form-control " type="text" placeholder="Nuevo Apellido">
											        </div>
											        
											        <div class="form-group">
													<input class="form-control " type="text" placeholder="Nuevo Email">
											        </div>
											        
											        <div class="form-group">
													<input class="form-control " type="text" placeholder="Nuevo Telefono de Contacto">
											        </div>
									      </div>
									          <div class="modal-footer ">
									        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Update</button>
									      </div>
									        </div>
									  
									  </div>
									    
					   	</div> <!-- Fin class modal fade -->
					   	
					   	
					   	<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" style="display: none;"> <!-- Inicio class modal fade -->
							      <div class="modal-dialog">
							    <div class="modal-content">
							          <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
							        <h4 class="modal-title custom_align" id="Heading">Eliminar Alumno</h4>
							      </div>
							          <div class="modal-body">
							       
							       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> ¿Esta segurisimo que quieres eliminar este registro?</div>
							       
							      </div>
							        <div class="modal-footer ">
							        <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Yes</button>
							        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>&nbsp;No</button>
							      </div>
							        </div>
							
							  </div>
									 
   					 </div> <!-- 	Fin class modal fade -->
							
							
							
				

						</div>
					</div>
				<br>
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
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">Registrar
					Alumno</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<label for="nombre">Nombre:</label> <input type="text"
						class="form-control" id="inputName" aria-describedby="nombreHelp">
					<small id="nombreHelp" class="form-text text-muted"></small>
					 
					<label
						for="apellido">Apellido:</label> <input type="text"
						class="form-control" id="inputApellido"
						aria-describedby="apellidoHelp"> <small id="apellidoHelp"
						class="form-text text-muted"></small> 
						
					<label
						for="inputEmail1">Correo Electronico:</label> <input type="email"
						class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp"> <small id="emailHelp"
						class="form-text text-muted"></small>
						
					<label for="inputCarreras">Carrera:</label>
    				<select class="form-control" id="selectCarrera">
    					  <option>Seleccione una opción...</option>
      					  <option>Ing.En Sistemas Computacionales</option>
					      <option>Ing.Civil</option>
					      <option>Ing.En Mecatrónica</option>
					      <option>Ing.En Electrónica</option>
					      <option>Ing.En Administración</option>
					      <option>Ing.En Industrías Alimentarias</option>
					      <option>Ing.Mecánica</option>
					      <option>Ing.En Industrial</option>
    				</select>	    				    			
    				
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