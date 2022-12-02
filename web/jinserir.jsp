<%-- 
    Document   : inserir
    Created on : 7 de nov de 2022, 16:31:57
    Author     : vinicius
--%>

<%@page import="DAO.DMail"%>
<%@page import="br.com.DAO.DAdicionarusu"%>
<%@page import="br.com.MODEL.MDUsuario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
       
        <link rel="stylesheet" href="assets/css/confir.css">
        
    </head>
    <body>
        <% 
            try{
                   
            MDUsuario um = new MDUsuario();
                  um.setEmail_Destinatario(request.getParameter("txtEmail"));
                  DAdicionarusu dao = new DAdicionarusu();
                   dao.AdicicionarUsu(um);
                   String mail = request.getParameter("txtEmail");
                   
                   
                  
                      
            }catch(Exception e){
            
            }
            %>
  
  
  
  
  
     <div class="area">

   

        <div class="center">
           
            <label id="txtText">Clique em 'Abrir' para abrir o jornal online.</label>
            <br>
            <button class="btnEntra"><a class="Entra"href="news/index.html">Abrir</a></button>

        </div>
            
           
     </div>      




    </body>
</html>
