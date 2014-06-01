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

        <link rel="shortcut icon" type="image/x-icon" href="<cor:url value='/resources/img/favicon.ico'/>" />
        <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/resources/js/geoLocation.js" type="text/javascript"></script> 
        
    </head>

    <body>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        
        
        
        <div class="container">
            
            <section>
                <div id="two">
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
                    
                    <cor:choose>
                        <cor:when test="${pageContext.request.userPrincipal.name == null}">
                            <input type="image"
                                   src="${pageContext.request.contextPath}/resources/img/login.png"
                                   alt="Login"
                                   class="log_icon"
                                   onclick="location.href ='${pageContext.request.contextPath}/login'"/>
                        </cor:when>
                        <cor:otherwise>
                            <p>Prihlásení: ${pageContext.request.userPrincipal.name}
                                <input type="image"
                                       src="${pageContext.request.contextPath}/resources/img/exit.png"
                                       alt="Logout"
                                       class="log_icon"
                                       href="<c:url value="/j_spring_security_logout" />"
                                       onclick="location.href ='javascript:formSubmit()'"/>

                            </p>
                        </cor:otherwise>
                    </cor:choose>
                            
                    
                
                    <%--<cor:if test="${pageContext.request.userPrincipal.name != null}">--%>
                        
                    <%--</cor:if>--%>
                    
            </div>
            
                 
            <div id="one">
            <ul id="nav">
                <li><a id="1"
                       href="${pageContext.request.contextPath}/">Home</a>
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
                    <li style="padding-left: 100px;">
                        <a  class="backbutton"
                        href="#">Prihlásení: ${pageContext.request.userPrincipal.name}
                        </a>
                   
                </li>
                </cor:if>
                
                <div id="lavalamp"></div>
            </ul>
            </div>
                <br/>
                <cor:if test="${pageContext.request.userPrincipal.name != null}">
                    <h3>: ${username}</h3>
                </cor:if>
            </section>
                    
                
        <cor:if  test="${!empty message}">                
            <h3>Message : ${message}</h3>	
        </cor:if>
                        

            <center>
                                
                <cor:choose>
                    <cor:when test="${pageContext.request.userPrincipal.name == null}">
                        <h1>Prosím prihláste sa.</h1>
                    </cor:when>
                        <cor:otherwise>
                            <h1></h1>
                        </cor:otherwise>
                </cor:choose>
            </center>

            <jsp:include flush="true" page="pripomienkovac.jsp"></jsp:include>

            <p id="x"></p><br>
        <div id="mapholder"></div>
        </div>
    </body>
</html>