<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:h="http://java.sun.com/jsf/html">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>NTS - Bakalarka</title>

        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/geoLocation.js" type="text/javascript"></script>    

    </head>

    <body>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <h1>Home page</h1>


        <p>
            <a href="${pageContext.request.contextPath}/stat/add.html">Add new - stat</a><br/>
            <a href="${pageContext.request.contextPath}/stat/list.html">Stat - ZOZNAM</a><br/>
        </p>

        <p>
            <a href="${pageContext.request.contextPath}/skupiny/add.html">Add new - skupinu</a><br/>
            <a href="${pageContext.request.contextPath}/skupiny/list.html">Skupiny - ZOZNAM</a><br/>
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

    </body>
</html>