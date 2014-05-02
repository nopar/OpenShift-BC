<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>  
<head>  
<title>Java Guys | Home</title>  
</head>  
  
<body>  

<table border="1">
    <tr>
    	<td>POstar idecko: </td>
    	<td>POstar meno: </td>
    	<td></td>
    	<td></td>
    </tr>
    <tr>
    	<td>${postar.postarId}</td>
    	<td>${contact.name}</td>
    	<td></td>
    	<td></td>
    </tr>    
    <c:forEach items="${postar.listy}" var="list">
        <tr>
            <td></td>
            <td></td>
            <td>${list.listId}</td>
            <td>${list.address}</td>
        </tr>
    </c:forEach>
</table>

 
</body>  
  
</html>  