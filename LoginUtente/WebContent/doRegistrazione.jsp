<%@page import="service.ServizioLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%
     ServizioLogin sl = new ServizioLogin();
     
     String nome= request.getParameter("nome");
     String cognome= request.getParameter("cognome");
     String user= request.getParameter("username");
     String password= request.getParameter("password");
     
     sl.registraUtente(nome, cognome, user, password);
     
     %>