<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Home</title>
</head>
<body>
<<<<<<< HEAD
	<h1>My Gold: <c:out value="${thisUser.getGold() }" /></h1>
	<progress class=" progress-bar"  value="${thisUser.getGold() }" max="100" ></progress>
	
=======
	<h1>My Gold: <c:out value="${thisUser.getGold().getGold()}" /></h1>
>>>>>>> 6526ee27b0753f0fa22400d5cb4b24d3e33aee4c
	<c:forEach items = "${ thisUser.getPets()}" var="onePet" >
		<div>

			<h1>${onePet.getPetName()}</h1>
				<h2>Energy: ${onePet.getEnergy()}</h2>
				<progress class="progress-bar" value="${onePet.getEnergy()}" max="100" ></progress>
			
			<h2>Happiness: ${onePet.getHappiness()}</h2>
			<progress class="progress-bar" value="${onePet.getHappiness()}" max="100" ></progress>
			
			<h2>Hunger: ${onePet.getHealth()}</h2>
			<progress class="progress-bar" value="${onePet.getHealth()}" max="100" ></progress>
			
			<h2>Clean: ${onePet.getCleanliness()}</h2>
			<progress class="progress-bar" value="${onePet.getCleanliness()}" max="10" ></progress>
		</div>
		<img src="/images/${onePet.getType()}pic.webp" alt="Failed image: ${onePet.getType()}" />
		<button>Clean Me</button>
		<a class="btn btn-secondary" href="/feed/${onePet.getId() }">Feed Me</a>
		<a class="btn btn-primary" href="/play">Play with Me</a>
<<<<<<< HEAD

		<a class="btn btn-success" href="/contest/${onePet.getId() }">Contest</a>
		<a class="btn btn-info" href="/sleep/${onePet.getId() }">Sleep</a>
		
	
=======
		<a class="btn btn-success" href="/contest/${onePet.id}">Contest</a>
>>>>>>> 6526ee27b0753f0fa22400d5cb4b24d3e33aee4c
	</c:forEach>
	
	
	
</body>
</html>