<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
         <title>Editácia skupiny</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
         <link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet" type="text/css"/>
       
    </head>
    <body>
        <h1>Editácia skupiny</h1>
        
        <p>${message}</p>

        <form:form method="POST" commandName="skupiny" action="${pageContext.request.contextPath}/skupiny/edit/${stat.idStat}.html">
            <table>
                <tbody>
                    <tr>
                        <td>ID:</td>
                        <td><form:input path="idGroup" /></td>
                    </tr>

                    <tr>
                        <td>Autorita:</td>
                        <td><form:input path="autorita" /></td>
                    </tr>
                    <tr>
                        <td>Specialne:</td>
                        <td><form:input path="specialne" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Edit" /></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </form:form>

        <p>
            <button onclick="location.href = '${pageContext.request.contextPath}/index.html'">
                Domov
            </button>

            <INPUT Type="button" VALUE="Naspäť" onClick="history.go(-1);
            return true;"></INPUT>
        </p>
    </body>
</html>