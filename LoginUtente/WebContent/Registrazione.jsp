<%@page import="service.ServizioLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <form action="Welcome.jsp" method="get">
  
     nome: <input type="text" name="name" /><br>
     cognome: <input type="text" name="cognome" /><br>
     username: <input type="text" name="username" /><br>
     password: <input type="password" name="password" /><br>
     
     <input type="submit" value="Registra" />
     
     </form>
     
     <%
     ServizioLogin sl = new ServizioLogin();
     
     String nome= request.getParameter("nome");
     String cognome= request.getParameter("cognome");
     String user= request.getParameter("username");
     String password= request.getParameter("password");
     
     sl.registraUtente(nome, cognome, user, password);
     
     %>

</body>
</html>