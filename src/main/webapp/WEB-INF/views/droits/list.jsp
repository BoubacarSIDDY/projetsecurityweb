<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
 <title>Droits</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
 <center>
  <h1>Gestion des roles</h1>
 </center>
    <div class="container">
            <div class="btn btn-group" role="group">
                <a href="droit?param=add" class="btn btn-primary glow-on-hover">Ajout de rôle</a><br>
                <a href="compte" class="btn btn-success glow-on-hover ml-3">Gestion des comptes</a>
            </div>
            <br>
        <table class="table able-sm table-bordered">

            <tr>
                <th>ID</th>
                <th>ROLE</th>
                <th>ACTION</th>
            </tr>
            <c:forEach var="droit" items="${listDroits}">
                <tr>
                    <td><c:out value="${droit.id}" /></td>
                    <td><c:out value="${droit.name}" /></td>
                    <td>
                        <a href="droit?param=delete&idS=<c:out value="${droit.id}" />" class="btn btn-sm btn-danger glow-on-hover" onclick="return confirm('voulez-vous effectuer cette suppression ?')">Supprimer</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
             <a href="logout" class="btn btn-danger ">Se deconnecter</a>

    </div>
</body>
</html>
