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

<%

    ServizioLogin sl = new ServizioLogin();

    String user= request.getParameter("username");
    String password= request.getParameter("password");
    
    boolean res = sl.esisteUtente(user, password);
    
    if(res == false){
    	RequestDispatcher rd = request.getRequestDispatcher("Registrazione.jsp");
    	rd.forward(request, response);
    	
    }

%>

</body>
</html>