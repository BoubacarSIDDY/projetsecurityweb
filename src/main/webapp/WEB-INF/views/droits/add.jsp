<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
 <title>Ajout de droit</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body class=" border">
 <center>
  <h1 class="text-success">Ajout d'un nouveau droit </h1>

 </center>
    <div class"container ml-5" style="margin-left:27%;">
        <div class="">
            <a href="droit" class="btn btn-success ">Gestion des Comptes</a>
        </div>
        <form method="post" action='droit' autocomplete="off" style="font-family:Roboto;">
            <% if(request.getAttribute("success") != null){%>
                <div class="row">
                    <div class="col-md-12">
                        <span class='text-danger'><%= request.getAttribute("success") %></span>
                    </div>
                </div>
            <%}%>
            <%if(request.getAttribute("error") != null){%>
                <div class="row">
                    <div class="col-md-12">
                        <span class='text-danger'><%= request.getAttribute("error") %></span>
                    </div>
                </div>
            <%}%>
        	<div class="row form-group ">
        		<div class="col-md-6">
        			<label for="name" >Nom du rôle:</label>
        			<input type='text' class="form-control" name='name' id='name' required placeholder="rôle"/>
        			<br>
        			<input type='submit' class="btn btn-success" name='submit'/>
        		</div>
        	</div>
        </form>
    </div>
</body>
</html>
