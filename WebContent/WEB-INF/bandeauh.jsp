<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="bandeauh">
		<a href="/Pacman"><img class="logo"
			src="/Pacman/resources/image/Pacman.jpg" alt="coucou" /></a>
	</div>
	<div class="bandeauh2">
		<p>Pac-man Ladder</p>
	</div>
	
		<c:choose>
		    <c:when test="${session.login==true}">
			    <div class="login">
					<p>bienvenue <c:out value="${ session.pseudo }"/> </p> 
					<br/>
					<form method="post" action="aurevoir">
						<input type="submit" value="Déconnexion"/>
					</form>
			    </div>
		    </c:when>    
		    
		    <c:otherwise>
			<form method="post" action="session">
				<table class="tabban">
					<tr>
						<td><label>Login :</label></td>
						<td><input type="text" id="pseudoh" name="pseudoh"/></td>
					</tr>
					<tr>
						<td><label>Password:</label></td>
						<td><input type="password" id="pwdh" name="pwdh" /></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="0.5"><input type="Submit" value="Connexion" />
						<input type="Button" onclick=window.location.href='/Pacman/inscription'; value="Inscription"  /></td>
						
						
					</tr>
				</table>
			</form>
		    <br />
		    </c:otherwise>
		</c:choose>	


</body>
</html>