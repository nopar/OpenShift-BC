<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Zoznam štátov</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css"/> 

    </head>
    <body onclick="posun(3)">
        
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
                    
        <h1>Zoznam štátov</h1>
        
        <button onclick="location.href = '${pageContext.request.contextPath}/stat/add.html'">
            Pridať štát
        </button>

        <c:if  test="${!empty stats}">
            <table border="1px" cellpadding="0" cellspacing="0" >
                <thead>
                    <tr>
                        <th width="10%">id</th>
                        <th width="15%">STAT</th>
                        <th width="10%">SKRATKA</th>
                        <th width="10%"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="statik" items="${stats}">
                        <tr>
                            <td>${statik.idStat}</td>
                            <td>${statik.stat}</td>
                            <td>${statik.skratka}</td>
                            <td>
                                <div id="crud_icon_block">
                                    <input type="image"
                                           src="../resources/img/edit.png"
                                           alt="Edituj štát"
                                           class="crud_icon"
                                           onclick="location.href = '${pageContext.request.contextPath}/stat/edit/${statik.idStat}.html'">
                                
                                    <input type="image"
                                           src="../resources/img/delete.png"

                                           alt="Zmaž štát"
                                           class="crud_icon"
                                           onclick="location.href ='${pageContext.request.contextPath}/stat/delete/${statik.idStat}.html'">
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