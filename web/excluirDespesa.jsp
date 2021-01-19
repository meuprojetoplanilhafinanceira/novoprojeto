<%-- 
    Document   : excluircliente
    Created on : 11 de nov de 2020, 08:06:23
    Author     : entra21
--%>

<%@page import="Modelos.Despesa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Agenda Financeira</title>
    </head>
    <body>
        
        <link rel="stylesheet" href="style/estilos.css">
        <h1>Excluir Despesa</h1>
        <hr />
        <%
          int id = Integer.parseInt(request.getParameter("id"));
          Despesa d = new Despesa();
          if (id != 0){
              d = d.consultar(id);
              if (d.excluir()){
                  out.write("Despesa excluida com sucesso");
              }
              else
              {
                  out.write("Problemas ao excluir despesa");
              }
          }    
        %>
        <hr />
        <a href="consultaDespesa.jsp">Consulta Despesa</a>
        
    </body>
</html>
