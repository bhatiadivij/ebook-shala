<%-- 
    Document   : ajax
    Created on : Jan 6, 2016, 4:07:58 PM
    Author     : Divij
--%>
<%@page import="java.sql.ResultSet"%>
<%!
 
static public String conString="jdbc:mysql://localhost:3306/ebooksha_ebookstore";
    static public  String User = "root";
    static public  String Pass = "password";
   
%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>-->
    </head>
    <body>
     <%
	 
	       String field = request.getParameter("field");
	       String branch = request.getParameter("branch");
	       String course = request.getParameter("course");
	       
	      int count=0;
	       if(branch.equalsIgnoreCase("none"))
	         {
	             try
		    {  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(conString,User,Pass);
			Statement st=con.createStatement();
			String Query="select b.bookId, b.bookName, b.edition, b.authorName, b.bookDownloadLink , c.field, c.branch, c.courseName from books b , classification c where b.bookId=c.bookId and c.field='"+field+"';";
			ResultSet result= st.executeQuery(Query);
		        String f=field.replaceAll("_", " ");
			out.write("<div id='content-location'><a href='javascript:callAjaxtoAccessCourseDetail(&quot;"+field+"&quot;,&quot;none&quot;,&quot;none&quot;)'>"+f+"</a></div>");			
			out.write("<div id='content-header'>"+f+"</div>");    
			out.write("<ul class='content-list'>");
			count=0;
			while(result.next())
			{
			    if(count==3)
				{
				    out.write("<li class='blank'></li>"); 
				    count=0;
				} 
				
				    out.write("<li class='content-body'>");
				    out.write("<img class='bookPic' src='books/"+result.getString(1)+".jpg' />");
				    out.write("<span class='bookName' title='"+result.getString(2)+"'>"+result.getString(2)+"</span>");
				    out.write("<span class='authorName' title='"+result.getString(4)+"'>Author : "+result.getString(4)+"</span>");
				    out.write("<span class='year'>Edition : "+result.getString(3)+"</span>");
				    out.write("<a href='worldofpdf/"+result.getString(6)+"/"+result.getString(7)+"/"+result.getString(8)+"/"+result.getString(5)+"' download><button class='download'>Download <i class='material-icons'>file_download</i></button></a>");
				    out.write("</li>");	
				    count++;				
			  		   
				
			}
			out.write("</ul>");
			con.close();
		    }
		   catch(Exception ex)
		    { 
			out.write(ex.toString());
		    }    	    
		 }
	       else if(course.equalsIgnoreCase("none"))
	         { 
	             try
		    {  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(conString,User,Pass);
			Statement st=con.createStatement();
			String Query="select b.bookId, b.bookName, b.edition, b.authorName, b.bookDownloadLink , c.field, c.branch, c.courseName from books b , classification c where b.bookId=c.bookId and c.branch='"+branch+"';";
			ResultSet result= st.executeQuery(Query);
			String f=field.replaceAll("_", " ");
			String b=branch.replaceAll("_", " ");
		        out.write("<div id='content-location'><a href='javascript:callAjaxtoAccessCourseDetail(&quot;"+field+"&quot;,&quot;none&quot;,&quot;none&quot;)'>"+f+"</a> > <a href='javascript:callAjaxtoAccessCourseDetail( &quot;"+field+"&quot;, &quot;"+branch+"&quot;,&quot;none&quot;)'>"+b+"</a></div>");
			out.write("<div id='content-header'>"+b+"</div>");
			out.write("<ul class='content-list'>");
			count=0;
			while(result.next())
			{
			    if(count==3)
				{out.write("<div class='blank'></div>"); count=0;}
				 out.write("<li class='content-body'>");
				    out.write("<img class='bookPic' src='books/"+result.getString(1)+".jpg' />");
				    out.write("<span class='bookName' title='"+result.getString(2)+"'>"+result.getString(2)+"</span>");
				    out.write("<span class='authorName' title='"+result.getString(4)+"'>Author : "+result.getString(4)+"</span>");
				    out.write("<span class='year'>Edition : "+result.getString(3)+"</span>");
				    out.write("<a href='worldofpdf/"+result.getString(6)+"/"+result.getString(7)+"/"+result.getString(8)+"/"+result.getString(5)+"' download><button class='download'>Download <i class='material-icons'>file_download</i></button></a>");
				    out.write("</li>");	
				    count++;	   
			}
			out.write("</ul>");
			con.close();
		    }
		   catch(Exception ex)
		    { 
			out.write(ex.toString());
		    }    	    
		 }
	       else if(!course.equalsIgnoreCase("none"))
	         {
	             try
		    {  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(conString,User,Pass);
			Statement st=con.createStatement();
			String Query="select b.bookId, b.bookName, b.edition, b.authorName, b.bookDownloadLink , c.field, c.branch, c.courseName from books b , classification c where b.bookId=c.bookId and c.courseName='"+course+"';";
			ResultSet result= st.executeQuery(Query);
		        String f=field.replaceAll("_", " ");
			String b=branch.replaceAll("_", " ");
			String c=course.replaceAll("_", " ");
			out.write("<div id='content-location'><a href='javascript:callAjaxtoAccessCourseDetail(&quot;"+field+"&quot;,&quot;none&quot;,&quot;none&quot;)'>"+f+"</a> > <a href='javascript:callAjaxtoAccessCourseDetail( &quot;"+field+" &quot;, &quot;"+branch+"&quot;,&quot;none&quot;)'>"+b+"</a> > <a href='javascript:callAjaxtoAccessCourseDetail( &quot;"+field+"&quot;, &quot;"+branch+"&quot;,&quot;"+course+"&quot;)'>"+c+"</a></div>");
			out.write("<div id='content-header'>"+c+"</div>");
			out.write("<ul class='content-list'>");
			count=0;
			while(result.next())
			{
			    if(count==3)
			    {out.write("<div class='blank'></div>"); count=0;}	
				 out.write("<li class='content-body'>");
				    out.write("<img class='bookPic' src='books/"+result.getString(1)+".jpg' />");
				    out.write("<span class='bookName' title='"+result.getString(2)+"'>"+result.getString(2)+"</span>");
				    out.write("<span class='authorName' title='"+result.getString(4)+"'>Author : "+result.getString(4)+"</span>");
				    out.write("<span class='year'>Edition : "+result.getString(3)+"</span>");
				    out.write("<a href='worldofpdf/"+result.getString(6)+"/"+result.getString(7)+"/"+result.getString(8)+"/"+result.getString(5)+"' download><button class='download'>Download <i class='material-icons'>file_download</i></button></a>");
				    out.write("</li>");	
				    count++;	   
			}
			out.write("</ul>");
			con.close();
		    }
		   catch(Exception ex)
		    { 
			out.write(ex.toString());
		    }    	    
		 }
	%>
    </body>
</html>

