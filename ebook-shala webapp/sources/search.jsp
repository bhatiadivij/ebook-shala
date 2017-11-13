<%-- 
    Document   : search
    Created on : Jan 11, 2016, 6:15:42 PM
    Author     : Divij
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%!

static public String conString="jdbc:mysql://localhost:3306/ebooksha_ebookstore";
    static public  String User = "root";
    static public  String Pass = "password";
   
%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>-->

<%
	String name = request.getParameter("name");
	if(name.isEmpty())
	{return;}
	try
		    {  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(conString,User,Pass);
			Statement st=con.createStatement();
			String Query="select b.bookName , b.edition, b.authorName , c.field, c.branch, c.courseName from books b, classification c where c.bookId=b.bookId and b.bookName like '%"+name+"%';";
			ResultSet result= st.executeQuery(Query);
		        
			if(!result.next())
			{  
			    Query="select b.bookName , b.edition, b.authorName , c.field, c.branch, c.courseName from books b, classification c where c.bookId=b.bookId and c.courseName like '%"+name+"%';";
			    result= st.executeQuery(Query);
			    	if(!result.next())
				    {  
					Query="select b.bookName , b.edition, b.authorName , c.field, c.branch, c.courseName from books b, classification c where c.bookId=b.bookId and b.authorName like '%"+name+"%';";
					result= st.executeQuery(Query);
						if(!result.next())
						    {  
							Query="select b.bookName , b.edition, b.authorName , c.field, c.branch, c.courseName from books b, classification c where c.bookId=b.bookId and b.edition like '%"+name+"%';";
							result= st.executeQuery(Query);
								    if(!result.next())
									{  
									    Query="select b.bookName , b.edition, b.authorName , c.field, c.branch, c.courseName from books b, classification c where c.bookId=b.bookId and c.branch like '%"+name+"%';";
									    result= st.executeQuery(Query);
											if(!result.next())
											    {  
												Query="select b.bookName , b.edition, b.authorName , c.field, c.branch, c.courseName from books b, classification c where c.bookId=b.bookId and c.field like '%"+name+"%';";
												result= st.executeQuery(Query);
													    if(!result.next())
														{  
														    out.write("<div class='error'>Sorry No Such Ebook Found ..!!</div>");
														}
														else
														{
														     do
														     { 
															    out.write("<a href='content.jsp?field="+result.getString(4)+"&branch="+result.getString(5)+"&course="+result.getString(6)+"'><div class='search-result-card'><font color='black'> "+result.getString(1)+"</font> , "+result.getString(3)+" , "+result.getString(2)+" edition </div></a>");
														     }while(result.next());   
														}
											    }
											    else
											    {
												 do
												 { 
													out.write("<a href='content.jsp?field="+result.getString(4)+"&branch="+result.getString(5)+"&course="+result.getString(6)+"'><div class='search-result-card'><font color='black'> "+result.getString(1)+"</font> , "+result.getString(3)+" , "+result.getString(2)+" edition </div></a>");
												 }while(result.next());   
											    }
									}
									else
									{
									     do
									     { 
										    out.write("<a href='content.jsp?field="+result.getString(4)+"&branch="+result.getString(5)+"&course="+result.getString(6)+"'><div class='search-result-card'><font color='black'> "+result.getString(1)+"</font> , "+result.getString(3)+" , "+result.getString(2)+" edition </div></a>");
									     }while(result.next());   
									}
	
						    }
						    else
						    {
							   do
							     { 
								    out.write("<a href='content.jsp?field="+result.getString(4)+"&branch="+result.getString(5)+"&course="+result.getString(6)+"'><div class='search-result-card'><font color='black'> "+result.getString(1)+"</font> , "+result.getString(3)+" , "+result.getString(2)+" edition </div></a>");
							     }while(result.next());
						    }
	
				    }
				    else
				    {
					   do
					     { 
						    out.write("<a href='content.jsp?field="+result.getString(4)+"&branch="+result.getString(5)+"&course="+result.getString(6)+"'><div class='search-result-card'><font color='black'> "+result.getString(1)+"</font> , "+result.getString(3)+" , "+result.getString(2)+" edition </div></a>");
					     }while(result.next());
				    }

			}
			else
			{
			     do
				 { 
					out.write("<a href='content.jsp?field="+result.getString(4)+"&branch="+result.getString(5)+"&course="+result.getString(6)+"'><div class='search-result-card'><font color='black'> "+result.getString(1)+"</font> , "+result.getString(3)+" , "+result.getString(2)+" edition </div></a>");
				 }while(result.next());
			}
			
			
			con.close();
		    }
		   catch(Exception ex)
		    { 
//			out.write(ex.toString());
		    }    	
%>
