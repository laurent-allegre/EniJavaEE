<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="fr.AAEniJavaEE.user.bo.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//FR" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultat identification</title>
</head>
<body>

<%   User u = (User) session.getAttribute( "utilisateur" ) ;	%>
	
	<h1>Information Utilisateur </h1> 	
	<h2>Vous êtes connecté avec les login et mot de passe suivant :</h2>
	<ul>
		<li><strong>Votre Login est :</strong> <%=u.getPseudo() %>
		<li><strong>Votre Mot de passe est :</strong> <%=u.getMotDePasse() %>
	</ul>
	<h4>Youpiiiiiiiiiii ca marche j'adore java non c'est pas vrai !!!!!!!!!!!</h4>

</body>
</html>