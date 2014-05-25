<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  lang="sk"
       xmlns="http://www.w3.org/1999/xhtml"
       xmlns:ui="http://java.sun.com/jsf/facelets"
       xmlns:h="http://java.sun.com/jsf/html">
    
    <head>
        <title>Skupiny</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/resources/js/posuvacmenu.js" type="text/javascript"></script>
    </head>
    
    <body onload="posun(2)">
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
                
                <div id="lavalamp"></div>
            </ul>
            </div>
            </section>
                
            <h1>Skupiny</h1>
           

            <button onclick="location.href = '${pageContext.request.contextPath}/skupiny/add.html'">
                Pridať skupinu
            </button></br></br>

            <c:if  test="${!empty skupiny}">
                <table border="1px" cellpadding="0" cellspacing="0" >
                    <thead>
                        <tr>
                            <th width="10%">id</th>
                            <th width="15%">AUTORITA</th>
                            <th width="10%">SPECIALNE</th>
                            <th width="10%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="skupina" items="${skupiny}">
                            <tr>
                                <td>${skupina.idGroup}</td>
                                <td>${skupina.autorita}</td>
                                <td>${skupina.specialne}</td>
                                <td>
                                    <div id="crud_icon_block">
                                        <input type="image"
                                               src="../resources/img/edit.png"
                                               alt="Edituj skupinu"
                                               class="crud_icon"
                                               onclick="location.href = '${pageContext.request.contextPath}/skupiny/edit/${skupina.idGroup}.html'">


                                            <input type="image"
                                                   src="../resources/img/delete.png"
                                                   alt="Zmaž skupinu"
                                                   class="crud_icon"
                                                   onclick="location.href ='${pageContext.request.contextPath}/skupiny/delete/${skupina.idGroup}.html'">
                                                </div>

                                                </td>
                                                </tr>
                                            </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <p>
                <button onclick="location.href = '${pageContext.request.contextPath}/index.html'">
                    Domov
                </button>

                <INPUT Type="button" VALUE="Naspäť" onClick="history.go(-1);
                    return true;"></INPUT>
            </p>
        </div>
    </body>
</html>