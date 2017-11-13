

$(function() {

    $( "#search-logo" ).click(function() {
	
      $( "#famous-fields" ).toggleClass( "disappearNav", 1000 );	
      $( "#search-field" ).toggleClass( "openSearch", 1000 );
      $( "#search-logo" ).toggleClass( "shiftSearchLogo", 1000 );
      $( ".search-results" ).toggleClass( "search-results-visible", 1000 );
    });

  });
  
$(function() {

    $( ".search-results" ).click(function() {
	
      $( "#famous-fields" ).toggleClass( "disappearNav", 1000 );	
      $( "#search-field" ).toggleClass( "openSearch", 1000 );
      $( "#search-logo" ).toggleClass( "shiftSearchLogo", 1000 );
      $( ".search-results" ).toggleClass( "search-results-visible", 1000 );
    });

  });

  function getPosition(element) {
    var xPosition = 0;
    var yPosition = 0;
  
    while(element) {
        xPosition += (element.offsetLeft - element.scrollLeft + element.clientLeft);
        yPosition += (element.offsetTop - element.scrollTop + element.clientTop);
        element = element.offsetParent;
    }
    return { x: xPosition, y: yPosition };
  }
    
  window.onscroll=function(){
      
      var position=getPosition(document.getElementById("content"));
      
      if(position.y<80)
	  document.getElementById("page-header").style.zIndex="1000";
      else
	  document.getElementById("page-header").style.zIndex="0";
  };  

$(function() {

    $( "#drawer-menu" ).click(function() {
	
      $( ".drawer" ).toggleClass( "openDrawer", 1000 );	
      $( ".otherThanDrawer" ).toggleClass( "appearOtherThanDrawer", 1000 );

    });

  });
  
  
$(function() {

    $( "#otherThanDrawer" ).click(function() {
	
      $( ".drawer" ).toggleClass( "openDrawer", 1000 );	
      $( ".otherThanDrawer" ).toggleClass( "appearOtherThanDrawer", 1000 );

    });

  });

  
$(function() {

    $( ".field-header" ).click(function() {
	var id=$(this).attr('id');
	id="b"+id;
	$(this).toggleClass("field-header-clicked",1000);
      $( "#"+id ).toggleClass( "drawer-branch-open", 1000 );	

    });

  });
  
$(function() {

    $( ".branch-header" ).click(function() {
	var id=$(this).attr('id');
	id="c"+id;
	$(this).toggleClass("branch-header-clicked",1000);
      $( "#"+id ).toggleClass( "drawer-course-open", 1000 );	

    });
  }); 
//
//var course;
//var field;
//var branch;

function setValues()
{
    var splitUrl=window.location.href.split('=');
      var f=splitUrl[1].split('&');
      var b=splitUrl[2].split('&');
       var course=splitUrl[3];
       var field=f[0];
       var branch=b[0];
       
       callAjaxtoAccessCourseDetail(field,branch,course);
}

function callAjaxtoAccessCourseDetail(field,branch,course)
  {
      
      var xmlhttp=null;


      if (window.XMLHttpRequest) 
	  {
	    xmlhttp = new XMLHttpRequest();
	  } 
      else 
          {
	    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
     
            
      xmlhttp.onreadystatechange=function()
      {
	  if(xmlhttp.readyState===4 && xmlhttp.status===200)
	  {
	  
	      document.getElementById('content').innerHTML=xmlhttp.responseText;
	  }
	  else
	  {
	       document.getElementById('content').innerHTML="<img src='images/loading-circle.gif'>";
	  }
      };
     
       xmlhttp.open("POST","ajax.jsp?field="+field+"&branch="+branch+"&course="+course,true);
      xmlhttp.send();
  }
  
  
  function callAjaxtoSearch()
  {
      
      var xmlhttp=null;
      var name=document.getElementById("search-field").value;
      
      if (window.XMLHttpRequest) 
	  {
	    xmlhttp = new XMLHttpRequest();
	  } 
      else 
          {
	    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
     
            
      xmlhttp.onreadystatechange=function()
      {
	  if(xmlhttp.readyState===4 && xmlhttp.status===200)
	  {
	  
	      document.getElementById('search-result-area').innerHTML=xmlhttp.responseText;
	  }
	  else
	  {
	       document.getElementById('search-result-area').innerHTML="<img src='images/loading-circle.gif'>";
	  }
      };
     
       xmlhttp.open("POST","search.jsp?name="+name,true);
      xmlhttp.send();
  }
  
$(function() {

    $( ".drawer-course ul li" ).click(function() {
	
      $( ".drawer" ).toggleClass( "openDrawer", 1000 );	
      $( ".otherThanDrawer" ).toggleClass( "appearOtherThanDrawer", 1000 );

    });

  });