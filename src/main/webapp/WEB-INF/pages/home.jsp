
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="sk"
      xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:h="http://java.sun.com/jsf/html">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>NTS - Bakalarka</title>

        <!--<link href="resources/css/style.css" rel="stylesheet" type="text/css"/>-->
        <link href="../../resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="../../resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <script src="../../resources/js/geoLocation.js" type="text/javascript"></script> 
        
        <link href="resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/geoLocation.js" type="text/javascript"></script>

    </head>

    <body>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        
        
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
                
                <div id="lavalamp"></div>
            </ul>
            

        

        

        <h1>Home page</h1>


        <p>
            <button onclick="location.href='${pageContext.request.contextPath}/stat/list.html'">
                Štáty - ZOZNAM
            </button><br/>
        </p>

        <p>
            <button onclick="location.href='${pageContext.request.contextPath}/skupiny/list.html'">
                Skupiny - ZOZNAM
            </button>
        </p>

        <center>
            <p>
                <a href="${pageContext.request.contextPath}/stat/statsjson">JSON- zoznam statov</a><br/>
                <a href="${pageContext.request.contextPath}/pocitadlo.html">pocitadlo odberov</a><br/>

            </p>
                
        </center>

        
       
        <button type="button" class="button" onclick="getLocation()" >
            Ukáž mi najbližšiu stanicu!
        </button>
                <p id="x"></p>
                
        <br>
        <div id="mapholder"></div>

        </div>
    </body>
</html>