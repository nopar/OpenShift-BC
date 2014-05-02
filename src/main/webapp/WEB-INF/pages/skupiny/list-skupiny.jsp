<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>List of SKUPINY</title>
    </head>
    <body>
        <h1>List of SKUPINY</h1>
        <p>Here you can see the list of the SKUPINY, edit them, remove or update.</p>
        
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
                                <a href="${pageContext.request.contextPath}/skupiny/edit/${skupina.idGroup}.html">Edit</a><br/>
                                <a href="${pageContext.request.contextPath}/skupiny/delete/${skupina.idGroup}.html">Delete</a><br/>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>

    </body>
</html>