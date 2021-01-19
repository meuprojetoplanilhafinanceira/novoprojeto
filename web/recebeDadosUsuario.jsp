<%-- 
    Document   : recebeDadosUsuario
    Created on : 18/12/2020, 08:17:57
    Author     : entra21
--%>

<%@page import="java.sql.Date"%>
<%@page import="Modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Agenda Finanaceira</title>
    </head>
     <%
        Usuario user = new Usuario();
        if(user.userExiste(request.getParameter("usuario"))){
        String msg = "Usuário já existe!";
        response.sendRedirect("informacao.jsp?msg="+ msg);
    }
    else{
       user.setCpf(request.getParameter("cpf"));
       user.setNome(request.getParameter("nome"));
       user.setEmail(request.getParameter("email"));
       user.setFone(request.getParameter("fone"));
       user.setDatanasc(Date.valueOf(request.getParameter("datanascimento")));
       user.setSenha(request.getParameter("senha"));
       user.setCep(request.getParameter("cep"));
       user.setEndereco(request.getParameter("endereco"));
       user.setCidade(request.getParameter("cidade"));
       user.setBairro(request.getParameter("bairro"));
       user.setUf(request.getParameter("uf"));
    if (user.salvar()){
         //direciona para a página de informações
         String msg = " Salvo com sucesso";
         response.sendRedirect("consultaUsuario.jsp?msg=" + msg);
        }
    }
        %>
        
</html>
