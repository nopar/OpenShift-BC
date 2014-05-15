<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Zoznam štátov</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="../resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="../resources/css/menu.css" rel="stylesheet" type="text/css"/> 

    </head>
    <body>
        
        <div class="container">
            <ul id="nav">
                <li><a href="${pageContext.request.contextPath}/index.html">Home</a>
                </li>
                <li><a class="hsubs" href="${pageContext.request.contextPath}/skupiny/list.html">Skupiny</a>
                    <ul class="subs">
                        <li><a href="${pageContext.request.contextPath}/skupiny/add.html">Pridať skupinu</a></li>
                    </ul>
                </li>
                <li><a class="hsubs" href="${pageContext.request.contextPath}/stat/list.html">Štáty</a>
                    <ul class="subs">
                        <li><a href="${pageContext.request.contextPath}/stat/add.html">Pridať štát</a></li>
                    </ul>
                </li>
                <li><a class="hsubs" href="#">Menu 3</a>
                    <ul class="subs">
                        <li><a href="#">Submenu 3-1</a></li>
                        <li><a href="#">Submenu 3-2</a></li>
                    </ul>
                </li>
                <li><a href="#">Menu 4</a></li>
                <li><a href="#">Menu 5</a></li>
                <li><a href="#">Menu 6</a></li>
                <li><a href="javascript:history.back()">Back</a></li>
                <div id="lavalamp"></div>
            </ul>
                    
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
                                <button onclick="location.href = '${pageContext.request.contextPath}/stat/edit/${statik.idStat}.html'">
                                    Edituj štát
                                </button>
                                <button onclick="location.href = '${pageContext.request.contextPath}/stat/delete/${statik.idStat}.html'">
                                    Zmaž štát
                                </button>
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