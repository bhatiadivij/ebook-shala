<%-- 
    Document   : content
    Created on : Jan 6, 2016, 10:16:25 AM
    Author     : Divij
--%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ebook-shala</title>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="font-awesome.min.css">
	<link rel="stylesheet" href="content.css">
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="icon" type="image/png" sizes="96x96" href="favicon-96x96.png">
	<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="content.js"></script>
    </head>
    <body onload="setValues()">
    <!--<div id="whole-page">-->	
	<!--page header..........................................................................................-->
		    <div id="page-header">
			<div id="drawer-menu">
			    <i class="material-icons">menu</i>
			</div>
			<div id="site-logo">
			    <a href="index.html">
				ebook-shala
				<span>BETA</span>
			    </a>
			    
			</div>
			<nav id="famous-fields" class="famous-fields" >
			     <a href="content.jsp?field=Engineering&branch=none&course=none"> <i class="material-icons">build</i> Engineering</a>
			    <a href="content.jsp?field=Medical&branch=none&course=none"> <i class="fa fa-stethoscope"></i> Medical</a>
<!--			    <a><i class="fa fa-legal"></i> Law</a>
			    <a><i class="fa fa-graduation-cap"></i> SAT & GRE</a>-->
			
			</nav>	

			<div id="search-bar" >
			      <div id="search-logo" class="search-logo" onclick="opensearch();">
				  <i class="fa fa-search"></i>
			      </div>
			    <input id="search-field" class="search-field" name="name" placeholder="What are you searching for...?" type="search" onkeyup="callAjaxtoSearch();" />
			</div>
		    </div>	
	<!--drawer.............................................................................................-->
		<div class="drawer">
		    <div id="drawer-header">
			<i class="material-icons">book</i> ebook-shala
		    </div>
		    <div class="drawer-field">
			<div class="field-header" id="f1">
			    Engineering
			</div>
			<div class="drawer-branch" id="bf1">
			     <ul>
				 <li>
				     <div class="branch-header" id="b11">Computer Science</div>
				     <div class="drawer-course" id="cb11">
					 <ul>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Algorithms')">Algorithms</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Android')">Android</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Artificial_Intelligence')">Artificial Intelligence</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','C')">C</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Cloud_Computing')">Cloud Computing</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Computer_Organization_and_Architecture')">Computer Organization and Architecture</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Data_Structures')">Data Structures</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Database_Systems')">Database Systems</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Fuzzy_Logic')">Fuzzy Logic</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Java')">JAVA</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','OOPS')">OOPS</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Operating_Systems')">Operating Systems</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Python')">Python</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Software_Engineering')">Software Engineering</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Computer_Science','Web_Design')">Web Design</a></li>
					 </ul>
				     </div> 
				 </li>
				 <li>
				     <div class="branch-header" id="b12">Electronics &amp; Communication</div>
				     <div class="drawer-course" id="cb12">
					 <ul>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Electronics_Communications','Communication_Systems')">Communication Systems</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Electronics_Communications','Digital_Signal_Processing')">Digital Signal Processing</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Electronics_Communications','Microprocessors')">Microprocessors</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Electronics_Communications','Signal_and_Systems')">Signals and Systems</a></li>
					  </ul>
				     </div> 
				 </li>
				 <li>
				     <div class="branch-header" id="b13">Mechanical</div>
				     <div class="drawer-course" id="cb13">
					 <ul>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Computer_Aided_Design')">Computer Aided Design</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Fluid_Mechanics')">Fluid Mechanics</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Kinematics_and_Design_of_Machinery')">KInematics and Design of Machinery</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Manufacturing_Processes')">Manufacturing Processes</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Material_Science')">Material Science</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Thermal_Systems_Engineering')">Thermal Systems Engineering</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Thermodynamics')">Thermodynamics</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Mechanical','Turbo_Machinery')">Turbo Machinery</a></li>
					 </ul>
				     </div> 
				 </li>
				 <li>
				     <div class="branch-header" id="b14">Physics</div>
				     <div class="drawer-course" id="cb14">
					 <ul>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Physics','Modern_Physics')">Modern Physics</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Engineering','Physics','Optics')">Optics</a></li>
					  </ul>
				     </div>
				 </li>
			     </ul>
			</div>
			<div class="field-header" id="f2">
			    Medical
			</div>
			<div class="drawer-branch" id="bf2">
			     <ul>
				 <li>
				     <div class="branch-header" id="b21">MBBS</div>
				     <div class="drawer-course" id="cb21">
					 <ul>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Medical','MBBS','Anatomy')">Anatomy</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Medical','MBBS','Biochemistry')">Biochemistry</a></li>
					     <li><a href="content.jsp?field=Medical&branch=MBBS&course=Histology">Histology</a></li>
					     <li><a href="content.jsp?field=Medical&branch=MBBS&course=Microbiology">Microbiology</a></li>
					     <li><a href="content.jsp?field=Medical&branch=MBBS&course=Osteology">Osteology</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Medical','MBBS','Parasitology')">Parasitology</a></li>
					     <li><a href="javascript:callAjaxtoAccessCourseDetail('Medical','MBBS','Physiology')">Physiology</a></li>
					 </ul>
				     </div> 
				 </li>
			     </ul>
			</div>
		    </div>
		    <div class="drawer-important-links">
			<ul>
			    <li><a href="suggestUs.html"><i class="material-icons">playlist_add</i> Request a book</a></li>
			    <li><a href="aboutUs.html"><i class="material-icons">info_outline</i> About Us</a></li>
			</ul>
		    </div>
		</div>
		<div class="otherThanDrawer" id="otherThanDrawer"></div>		
<!--CONTENT......................................................................................................................-->
<table class="wrapper" >	
    <tr>
	<td>
	    <div id="content" >
		    <div id="mainContentArea">
		    </div>
	    </div>
	</td>    
    </tr>
<!-- google ads....................................................................................................-->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- content -->
<ins class="adsbygoogle"
     style="display:inline-block;width:260px;height:600px; position:absolute; top:150px; right:15px; z-index: 1;"
     data-ad-client="ca-pub-6398520386440493"
     data-ad-slot="1875739760"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<!--search results.................................................................................................-->
		    <div class="search-results">
			<div class="search-result-area" id="search-result-area">
			</div>
		    </div>
<!--footer.........................................................................................................-->
	<tr>    
	        <td id="second-row">
		    <div id="page-footer">
			<nav id="socialLinks">
			     <span><a href="https://www.facebook.com/ebookshala" target="_blank"><i class="fa fa-facebook-official"></i> </a></span>
			    <span><a href="https://plus.google.com/u/0/107490069075788480388" target="_blank"><i class="fa fa-google-plus-square"></i></a></span>
			     <span><a href="https://twitter.com/ebook_shala" target="_blank"><i class="fa fa-twitter"></i></a></span>
			</nav>
			<nav id="importantLinks">
			    <span><a href="suggestUs.html"><i class="material-icons">playlist_add</i> Request a book</a></span>
			    <span>|</span>
<!--			    <span><a><i class="material-icons">file_upload</i> Upload a book</a></span>
			    <span>|</span>	
			    <span><a><i class="material-icons">mode_edit</i> Feedback</a></span>
			    <span>|</span>-->
			    <span><a href="aboutUs.html"><i class="material-icons">info_outline</i> About Us</a></span>
			</nav>
		    </div>
		</td>    
	</tr>
    </table>
    <!--</div>-->
    </body>
</html>
