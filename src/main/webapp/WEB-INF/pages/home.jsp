<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cor" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="sk"
      xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:h="http://java.sun.com/jsf/html">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>NTS - Bakalarka</title>

        <link rel="icon" href="${pageContext.request.contextPath}/resources/favicon.ico"/>
        <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/resources/js/geoLocation.js" type="text/javascript"></script> 
        
        
    </head>

    <body>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        
        
        
        <div class="container">
            
            <section>
                <div id="two">
<!--                <input type="image"
                       src="${pageContext.request.contextPath}/resources/img/login.png"
                       alt="Login"
                       class="log_icon"
                       onclick="location.href ='${pageContext.request.contextPath}/login'"/>-->

                    <cor:url value="/j_spring_security_logout" var="logoutUrl" />
                    <form action="${logoutUrl}" method="post" id="logoutForm">
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}" />
                    </form>
                    <script>
                            function formSubmit() {
                                    document.getElementById("logoutForm").submit();
                            }
                    </script>
                    
            

                    <cor:if test="${pageContext.request.userPrincipal.name != null}">
                        <p>Prihlásení: ${pageContext.request.userPrincipal.name}
                            <input type="image"
                                   src="${pageContext.request.contextPath}/resources/img/exit.png"
                                   alt="Logout"
                                   class="log_icon"
                                   href="<c:url value="/j_spring_security_logout" />"
                                   onclick="location.href ='javascript:formSubmit()'"/>
                            
                        </p>
                    </cor:if>
                            
              
            </div>
                 
            <div id="one">
            <ul id="nav">
                <li><a id="1"
                       href="${pageContext.request.contextPath}/logged/index.html">Home</a>
                </li>
                <li><a class="hsubs"
                       id="2"
                       onclick="posun(2)"
                       href="${pageContext.request.contextPath}/skupiny/list.html">Skupiny</a>
                    <ul class="subs">
                        <li><a href="${pageContext.request.contextPath}/skupiny/add.html">Pridať skupinu</a></li>
                        <li><a href="${pageContext.request.contextPath}/skupiny/list.html">Zoznam skupín</a></li>
                    </ul>
                </li>
                <li><a class="hsubs" 
                       id="3"
                       onclick="posun(3)"
                       href="${pageContext.request.contextPath}/stat/list.html">Štáty</a>
                    <ul class="subs">
                        <li><a href="${pageContext.request.contextPath}/stat/add.html">Pridať štát</a></li>
                        <li><a href="${pageContext.request.contextPath}/stat/list.html">Zoznam štátov</a></li>
                    </ul>
                </li>
                <li><a class="hsubs" href="#">Menu 3</a>
                    <ul class="subs">
                        <li><a href="#">Submenu 3-1</a></li>
                        <li><a href="#">Submenu 3-2</a></li>
                    </ul>
                </li>
                <li><a href="#">Menu 3</a></li>
                <li><a href="#">Menu 5</a></li>
                <li><a  onclick="posun(6)"
                        href="#">Nástroje</a>
                    <ul class="subs">
                        <li><a href="#" onclick="getLocation()">Nájdi najbližšiu stanicu</a></li>
                    </ul>
                </li>
                
                <cor:if test="${pageContext.request.userPrincipal.name != null}">
                    <li style="float: right; radius: 5px";>
                        <a  class="backbutton"
                            href="#">Prihlásení: ${pageContext.request.userPrincipal.name}</a>
                   
                </li>
                </cor:if>
                
                <div id="lavalamp"></div>                
              
            </ul>
            </div>
            </section>
                    
                
        <cor:if  test="${!empty message}">                
        <h3>Message : ${message}</h3>
	<h3>Username : ${username}</h3>	
        </cor:if>
                        

            <h1>Home page</h1>

            <center>
                <p>
                    <button onclick="location.href='${pageContext.request.contextPath}/stat/getStaty'">
                        JSON- zoznam statov
                    </button><br/>
                    <button onclick="location.href='${pageContext.request.contextPath}/pocitadlo.html'">
                        pocitadlo odberov
                    </button><br/>
                </p>

                        
                        
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <p>si Admin</p>
                    </sec:authorize>
                        
                    <sec:authorize access="hasRole('ROLE_LEKAR')">
                        <p>si Lekar</p>
                    </sec:authorize>
                        
                        <cor:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            Show admin menu items.
                        </cor:if>
                
                
            </center>

            <p id="x"></p>
                
        <br>
        <div id="mapholder"></div>
        </div>
    </body>
</html>