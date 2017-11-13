<%-- 
    Document   : suggestUs
    Created on : Jan 4, 2016, 8:13:18 PM
    Author     : Divij
--%>



<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!

static public String conString="jdbc:mysql://localhost:3306/ebooksha_ebookstore";
    static public  String User = "root";
    static public  String Pass = "password";
   
%>
<%
    String Email=request.getParameter("email");
    String bn=request.getParameter("bookName");
    String an=request.getParameter("authorName");
    String in=request.getParameter("instituteName");
    String bookName=bn.replaceAll("'", "");
    String authorName=an.replaceAll("'","");
    String instituteName=in.replaceAll("'","");
  String location=new String();
          try
            {  
		Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(conString,User,Pass);
                Statement st=con.createStatement();
                String Query= "insert into suggestions values('"+Email+"','"+bookName+"','"+authorName+"','"+instituteName+"');";
                st.executeUpdate(Query);
                con.close();
	        location="suggestUs.html?status=1";	
            }
           catch(Exception ex)
            { 
		location="suggestUs.html?status=2";	
            }    
	 
        response.sendRedirect(location);
%>

