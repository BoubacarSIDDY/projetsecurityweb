<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
 <title>Comptes</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

 <center>
  <h1>Gestion des comptes</h1>
 </center>
    <div class="container">

                <div class="btn btn-group" role="group">
            <a href="compte?param=add" class="btn btn-primary glow-on-hover">Ajouter un nouveau compte</a><br>
            <a href="droit" class="btn btn-success glow-on-hover">Gestion des droits</a>
            </div>
        <c:if test="${not empty message}">
            <c:out value="${message}"/>
        </c:if>
        <table class="table table-sm table-bordered">
            <thead class="thead-dark">
                <th>ID</th>
                <th>Username</th>
                <th>Password</th>
                <th>Actions</th>
            </thead>
            <c:forEach var="compte" items="${listCompte}">
                <tr class="group/item  hover:bg-slate-100 ...">
                    <td><c:out value="${compte.id}" /></td>
                    <td><c:out value="${compte.username}" /></td>
                    <td><c:out value="${compte.password}" /></td>
                    <td style="display:flex;">
                   <a href="compte?idM=<c:out value="${compte.id}" />" class="btn btn-sm btn-info glow-on-hover">Modifier</a><br>
                   <a href="compte?param=delete&idS=<c:out value="${compte.id}" />" class="btn btn-sm btn-danger glow-on-hover" onclick="return confirm('voulez-vous effectuer cette suppression ?')">Supprimer</a><br>

                    </td>

                </tr>
            </c:forEach>
        </table>

                        <a href="logout" class="btn btn-danger ">Se deconnecter</a>

    </div>

</body>
</html>
