<%-- 
    Document   : cadastroCategoria
    Created on : 16/12/2020, 08:44:41
    Author     : entra21
--%>

<%@page import="Modelos.Receita"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.Despesa"%>
<%@page contentType="text/html charset=UTF-8" pageEncoding="UTF-8"%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="style/estilos.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
        <div class="row">
            <div class="leftcolumn">
            <div class="card">
            <img src="imagens/avatar.jpg" class="w3-circle w3-margin-right" style="width:46px">
            <h2>Olá João !!!</h2>
            <div class="topnav a">
                <a href="#"><i class="fa fa-envelope"></i> </a>
                <a href="#"><i class="fa fa-user"></i></a>
                <a href="#"><i class="fa fa-cog"></i></a>
            </div>
            </div>

            <div class="leftcolumn">
            </div>
            <div class="card">
            
        <h4><b>Painel de Controle</b></h4></br>
        <div class="clearfix">
        <div class="column menu">
        <ul class="a">
            <li><a href="#" ><i class="fa fa-users fa-fw"></i>  Visão Geral</a></li>
            <li><a href="cadastroDespesa.jsp"><i class="fas fa-comments-dollar"></i>  Seu novo Gasto</a> </li>
            <li><a href="cadastroReceita.jsp"><i class="fas fa-donate"></i>  Sua nova Renda</a></li>
            <li><a href="cadastroCategoria.jsp"><i class="fas fa-clipboard"></i>  Crie nova Categoria</a></li>
            <li><a href="consultaBalancete.jsp"><i class="fas fa-balance-scale"></i>  Resumo Financeiro</a></li>
            <li><a href="#"><i class="fa fa-bell fa-fw"></i>  Noticias</a></li>
            <li><a href="#"><i class="fa fa-bank fa-fw"></i>  Geral</a></li>
            <li><a href="#"><i class="fa fa-history fa-fw"></i>  Historico</a></li>
            <li><a href="#"><i class="fa fa-cog fa-fw"></i>  Configurações</a></li>
        </ul>
        </div>
        </div>
        </div>
    </div>
              
    <div class="rightcolumn">
    <div class="card">
        <h2><b><i class="fas fa-hand-holding-usd"></i> Minha Agenda Financeira</b></h2>
       
    </div>
        <title>Minha Agenda Financeira</title>
        
    </head>
    <body>
        <div class="card">
        <h1>Cadastro da Categoria</h1>
        <hr />
         <div>
            <form action="recebeDadosCategoria.jsp" method="POST">
            
            <label>Informe a descrição</label>
            <input class="box" type="text" name="descricao" /> 
            
            <br />
            <label>Informe o tipo</label> <br />
          
            <select name="tipo">
                
                <option value="R"> Receita </option>
                <option value="D">Despesa</option>
            </select>
           
            
            <hr />
            <input type="button" value="Salvar" onclick="enviaForm()" />
            <input type="reset" value="Cancelar"  />
           
            <hr />
            </div>
        </form>
        <script>
            function enviaForm(){
                var descricao = document.getElementsByName("descricao");
                if(descricao[0].value === ""){
                   descricao[0].focus();
                   alert("informe a descricao");
                   exit();
            }
                var valor = document.getElementsByName("tipo");
                if(valor[0].value === ""){
                   valor[0].focus();
                   alert("informe o tipo");
                   exit();
            }
            
            document.forms[0].submit();
        }
        </script>
         </div>
        
        <footer>
            <script src="scripts/rodape.js"></script> 
        </footer> 
    </body>
</html>
