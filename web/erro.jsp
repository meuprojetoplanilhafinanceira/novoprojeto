<%-- 
    Document   : erro
    Created on : 20 de jan. de 2021, 08:37:14
    Author     : entra21
--%>

<%@page contentType="text/html charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <style>
        div{
            display: block;
            width: 300px;
            margin:auto;
            margin-top: 100px;
        }
        p{
            color: red;
            font-size: 30px;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Agenda Financeira</title>
    </head>
    <body>
    <div>
        <a href="cadastroUsuario.jsp"><img src="imagens/erro.png" width="100px" height="100px"/></a> 
        
        <p>
            <%
                out.write(request.getParameter("msg"));
            %>
        </p> 
    </div>  
    </body>
</html>
