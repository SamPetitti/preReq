<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>The PreReq App</title>
    <c:url value="/css/site.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
</head>

<body>
    <header id = "header">
    		<div id= "header-flex">
    		<c:url value="/" var="homePage" />
    		<c:url value="/img/prereqLogo.png" var="logoSrc" />
    	<div id= "logo">
    	<a href="${homePage}">
        		<img id = "bitmoji" src="${logoSrc}" alt= "back to school logo image"/>
        </a>
        </div>
        <div id= "site-title">
        <h1> <em> The PreReq App</em></h1>
        </div>
       </div>
    </header>
         <h2>Assisting the journey towards your next Degree</h2>
    <nav>
        <ul>
            <li class="links"><a href="">Home</a></li>
            <li class="links"><a href="newStudent">Create an Account</a></li>
            <li class="links"><a href="login">Login</a></li>
            <li class="links"><a href="login">About Site</a></li>    
   
        </ul>
    </nav>
    