<%@page import="service.ServizioLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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