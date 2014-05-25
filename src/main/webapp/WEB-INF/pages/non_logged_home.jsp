<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="sk"
      xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:h="http://java.sun.com/jsf/html">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>NTS - Bakalarka</title>

        <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/resources/js/geoLocation.js" type="text/javascript"></script> 
        
    </head>

    <body>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        
        
        
        <div class="container">
            
            <section>
                <div id="two">
                <input type="image"
                       src="${pageContext.request.contextPath}/resources/img/login.png"
                       alt="Login"
                       class="log_icon"
                       onclick="location.href ='${pageContext.request.contextPath}/login'"/>
                <input type="image"
                       src="${pageContext.request.contextPath}/resources/img/exit.png"
                       alt="Logout"
                       class="log_icon"
                       onclick="location.href ='${pageContext.request.contextPath}/'"/>            
            </div>
            
                 
            <div id="one">
            <ul id="nav">
                <li><a id="1"
                       href="${pageContext.request.contextPath}/index.html">Home</a>
                </li>
                <li><a href="#">Menu 3</a></li>
                <li><a href="#">Menu 5</a></li>
                <li><a  onclick="posun(6)"
                        href="#">Nástroje</a>
                    <ul class="subs">
                        <li><a href="#" onclick="getLocation()">Nájdi najbližšiu stanicu</a></li>
                    </ul>
                </li>
                
                <div id="lavalamp"></div>
            </ul>
            </div>
                <br/>
                <h3>: ${message}</h3>
            </section>
                    
                
        <cor:if  test="${!empty message}">                
            <h3>Message : ${message}</h3>	
            <h3>Username : ${username}</h3>	
        </cor:if>
                        

            <h1>Prosím prihláste sa</h1>


            <p id="x"></p><br>
        <div id="mapholder"></div>
        </div>
    </body>
</html>