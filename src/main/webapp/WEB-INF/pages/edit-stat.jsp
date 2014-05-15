<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Editácia štátu</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="../../resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="../../resources/css/menu.css" rel="stylesheet" type="text/css"/> 

    </head>
    <body>
        <h1>Editácia štátu</h1>

        <p>${message}</p>

        <form:form method="POST" commandName="stat" action="${pageContext.request.contextPath}/stat/edit/${stat.idStat}.html">
            <table>
                <tbody>
                    <tr>
                        <td>ID_</td>
                        <td><form:input path="idStat" /></td>
                    </tr>

                    <tr>
                        <td>Stat:</td>
                        <td><form:input path="stat" /></td>
                    </tr>
                    <tr>
                        <td>Skratka:</td>
                        <td><form:input path="skratka" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Uložiť" /></td>
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