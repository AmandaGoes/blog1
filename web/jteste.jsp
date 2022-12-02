<%-- 
    Document   : teste
    Created on : 18 de nov. de 2022, 12:19:49
    Author     : vinicius
--%>

<%@page import="br.com.MODEL.MDUsuario"%>
<%@page import="br.com.DAO.DAdicionarusu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.AdicionarUsuarioDao"%>
<%@page import="br.com.MODEL.UsuarioModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/app.css">
    </head>
    <body>
        <!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">
							

							<!-- Header -->
								<header id="header">
									<a href="controle_Logins.html" class="logo"><strong>Controle de usuarios</strong></a>
								    <h5>Quantidade: 20</h5>	
									<button class="btnAdicionar"id="btnAdicionarUsu" >+</button>
								</header>
								

							<!-- Banner -->
							
								<table>
									<thead>
									   <tr class="tr1">
										   <th class="th1">id</th>
										   <th class="th1">Nome</th>
                                                                                   <th class="th1">Email Destinatario</th>
                                                                                   <th class="th1">Email Remetente</th>
										   <th></th>  
										   <th></th>
									   </tr>
									   </tr>
                                                                           <tr>
                                                                            <% 
                                                                                          try{
                                                                                               DAdicionarusu udao = new DAdicionarusu();
                                                                                               
                                                                                                  ArrayList<MDUsuario> list = udao.listarUsu(); 
                                                                                                  
                                                                                                    for(int num = 0; num < list.size(); num++ ){
                                                                                                            out.print("<th>"+list.get(num).getId()+"</th>");
                                                                                                             out.print("<th>"+list.get(num).getNome()+"</th>");
                                                                                                             out.print("<th>"+list.get(num).getEmail_Destinatario()+"</th>");
                                                                                                             out.print("<th>"+list.get(num).getEmail_Remtente()+"</th>");
                                                                                                             String btnExcluir = "btnExcluir", btnAtualizar = "btnAtualizar";
                                                                                                             out.print("<td><button class="+btnExcluir+"></button></td>");
                                                                                                             out.print("<td><button class="+btnAtualizar+"></button></td>");
                                                                                                     }
                                
                                                                                         }
                                                                                       catch(Exception  e){
                                                                                       
                                                                                       }
                                                                                
                                                                                   %>
                                                                           </tr>                                                                  
									</thead>
								  </table>
							<!-- Section -->
							

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="teste.jsp">Controle Logins</a></li>
										<li><a href="index.html">Home</a></li>
									</ul>
								</nav>

							<!-- Section -->
								
							<!-- Section -->
								

							<!-- Footer -->
								

						</div>
					</div>

			</div>

			<div id="fundo2">
				<div class="pop-up" id="pop2">
					<button class="btnSubirPOP" onclick="fechar()"></button>
					<form action="inserir.jsp" method="post">
						<p>Adicione o Usuario</p>
						<input type="text" placeholder="Email" name="txtEmail" id="txtEmail">
						<br>
						<input typr="text" placeholder="Nome" name="txtName" id="txtNome" class="txtNome">
						<br>
						<input type="submit" value="Inserir" class="btnEnviar">
					</form>
						
					</form>
			

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/Clogins.js"></script>
        
        
       
    </body>
</html>
