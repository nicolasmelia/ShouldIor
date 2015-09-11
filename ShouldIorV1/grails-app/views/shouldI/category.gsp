<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="icon" href="../../favicon.ico">
      <title>Starter Template for Bootstrap</title>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
      <!-- Bootstrap core CSS -->
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='bootstrap.css'/>">
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='buttons.css'/>">
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='customBoot.css'/>">
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='awesome-bootstrap-checkbox.css'/>">
      <!-- Bootstrap core JS -->
      <script src="<g:resource dir="js" file="bootstrap.min.js" />"></script>
      <!-- facebook login -->
      <g:javascript src="facebookLogin.js" />
      <g:javascript src="dataRequest.js" />
      <!-- font-awesome -->
      <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='typehead-searchBar.css'/>">
      <script src="
      <g:resource dir="js/typedJS" file="typed.min.js" />
      "></script>
      <script src="
      <g:resource dir="js/typeaheadJS" file="typeahead.jquery.min.js" />
      "></script>
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body style = "background-color: #F6F6F6!important; background-image:url('${resource(dir: "images", file: "wall1.jpg")}'); margin-bottom: 20px; background-size: cover;  background-attachment: fixed; min-width: 320px;  ">
   <g:if test="${session.name}">
      <input id = "sessionCheck" type="hidden" name="country" value="true">
   </g:if>
   <g:else>
      <input id = "sessionCheck" type="hidden" name="country" value="false">
   </g:else>
   <nav class="navbar navbar-inverse navbar-fixed-top" style = "">
      <div class="container">
         <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a href = "shouldI" ><img onClick = "h" src="${resource(dir:'images',file:'logo.png')}"   class="navbar-brand"/></a>
         </div>
         <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
               <g:if test="${session.name}">
                  <li><a href="#"><span class= 'fa fa-bell-o'></span><span style = "padding-left: 6px;" >0</span></a></a></li>
                  <li><a href="#"><span class= 'fa fa-pencil-square-o'></span><span style = "padding-left: 6px;" >Ask</span></a></a></li>
                  <li><a href="#"><span class= 'fa fa-line-chart'></span><span style = "padding-left: 6px;" >Trending</span></a></a></li>
               </g:if>
               <g:else>
                  <li><a href="#"  onClick = "showNoLogin()" ><span class= 'fa fa-pencil-square-o'></span><span style = "padding-left: 6px;" >Ask</span></a></a></li>
                  <li><a href="#"><span class= 'fa fa-line-chart'></span><span style = "padding-left: 6px;" >Trending</span></a></a></li>
               </g:else>
            </ul>
            <g:if test="${session.name}">
               <ul class="nav navbar-nav navbar-right" style = "padding: -10px;" >
                  <li class="dropdown" style = "">
                     <a href="#" style = "" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                     <img style = "display:inline-block; width: 25px; height: 25px; margin-right: 4px; margin-top: -25px;  margin-bottom: -25px;" src = "User/getProfileImage/${session.userID}" />			
                     ${session.name}
                     <span class="fa fa-caret-down"></span></a>
                     <ul class="dropdown-menu">
                        <li><a href="#"><span class= 'fa fa-home'><span style = "padding-left: 5px;" >Home</span></a></li>
                        <li><a href="#"><span class= 'fa fa-leaf'><span style = "padding-left: 5px;" >My Profile</span></a></li>
                        <li><a href="#"><span class= 'fa fa-question-circle'><span style = "padding-left: 5px;" >Search</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a  onClick = "logoutFaceBook()" href="#"><span class= 'fa fa-sign-out'><span style = "padding-left: 5px;" >Log Out</span></a></li>
                     </ul>
                  </li>
               </ul>
            </g:if>
            <g:else>
               <ul class="nav navbar-nav navbar-right">
                  <li><a id = "facebookLoginMenu" href = "#"  style = ""  onClick = "loginFacebook()">Log in with <span href="#about" style = "padding-left: 4px; color:#5BC0DE;" class='fa fa-facebook-official'></span> </a></li>
               </ul>
               <ul class="nav navbar-nav navbar-right">
               </ul>
            </g:else>
         </div>
         <!--/.nav-collapse -->
      </div>
   </nav>
   
   <div class="container" style = "max-width: 725px; margin-top: 75px; ">

   <div style = "width: 100%; ">
      <div  class="contentContainer">
         <div class="contentContainerTitle dropdown">
         
                  <button class="btn btn-default dropdown-toggle" type="button" style = "width: 100%; border-bottom-right-radius: 0px;     background-color: rgb(0,0,0, 0); border-bottom-left-radius: 0px;" data-toggle="dropdown">
                  Trending Now 
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu" style = "width: 100%; ">
                     <li class="dropdown-header">My Stuff</li>
                     <li><a href="#">My Notifications</a></li>
                     <li><a href="#">My Questions</a></li>
                     <li><a href="#">My Favorites</a></li>
                     <li class="divider"></li>
                     <li class="dropdown-header">Follow</li>
                     <li><a href="#">My Followers</a></li>
                     <li><a href="#">Following</a></li>
                  </ul>

         </div>
                     <div class = "scrollCon" style = "height: 310px; " >  
         <g:each in="${question}">
            <table class = "longViewTable" onmouseover="glow(this)" onmouseout="unGlow(this)"  onClick = "loadQuestionURL('${it.questionID}')" >
               <tr class = 'imgTR'>
                  <td class = 'imgTD'>
                     <g:if test="${it.answerOneImage}">
                        <img  class = "SmallViewImg" src = "/ShouldIorV1/Question/getAnswerImageById/${it.questionID}:1" />	
                     </g:if>
                     <g:else>
                        <img  class = "SmallViewImg"  src="${resource(dir:'images',file:'noImg.png')}"  />	
                     </g:else>
                  </td>
                  <td style = "width: 100%; height:1px; ">
                     <table style=" height: 100%; ">
                        <tr  style = "vertical-align: top;" >
                           <td style = "height: 100%; ">
                              <span style = "display: block;  font-size: 16px;" >${it.userName}</span> 
                              <span style = "display:block; font-size: 16px;  color: #6A6A6A; " >${it.questionTitle}</span> 
                           </td>
                        </tr>
                        <tr  style = "vertical-align: bottom;" >
                           <td style = "text-align: top;  height: 100%; ">
                              <span class = "fa fa-line-chart" style = "color: #5BC0DE;  margin-right: 3px;" ></span>${it.totalVotes}
                              <span class = "fa fa-comments" style = "color: #5BC0DE;    margin-right: 3px; margin-left: 10px;"  > </span>10k  
                           </td>
                        </tr>
                     </table>
                  </td>
                  <hr style = "padding: 0px; margin: 0px;"/>
               </tr>
            </table>
         </g:each>
                     </div>
                 
           <div style = "border-top: solid 1px #b2b2b2;  width: 100%;">  
      		<div class="btn-group" style = "margin: 10px 0px 10px 10px;    " >
                 <g:link  action="myProfile"  params="[offset: offset, up: 'false']"  style = "padding-top: 2px; padding-bottom: 2px;" class="btn btn-default">
                   		  <span class="fa fa-angle-double-left"></span> Back 
                </g:link>

                 <g:link  action="myProfile"  params="[offset: offset, up: 'true']" style = "padding-top: 2px; padding-bottom: 2px;" class="btn btn-default">
                   		   Next <span class="fa fa-angle-double-right"></span>
                </g:link>
            </div> 
            
                  		<div class="btn-group" style = "margin: 10px 0px 10px 0px;   " >
                 <g:link  action="myProfile"  params="[offset: offset, up: 'false']"  style = "padding-top: 2px; padding-bottom: 2px;" class="btn btn-default">
                   		  <span class="fa fa-random"></span>  
                </g:link>
            </div>  
            
            
              
        </div>      
            
      </div>

   </div>
   
   <div style = "width: 100%; ">
      <div  class="contentContainer">
         <div class="contentContainerTitle">
            <p class = "fa  fa-random" > <span>Randomly Awesome</span> </p>
         </div>
         <div style = "padding: 15px;">
            <h3 style = "text-align: left; color: #6A6A6A; margin:0px;">
               ShouldI.fm is taking off rapidly!
            </h3>
            <p style = "font-size: 15px; width: 100%; margin-top: 10px; text-align: left;">
               Just like YouTube you can make extra cash from the audiance you attract to your questions. Each vote earns you money. <a href = "#">Learn More</a>
            </p>
            <div>
            </div>
         </div>
      </div>
      

   
 
   <!-- LOGIN Modal -->
   <div class="modal fade" id="noLogin" role="dialog">
      <div class="modal-dialog">
         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title"><span href="#about" style = "padding-left: 4px;" class='fa fa-exclamation-circle'> </span> Login</h4>
            </div>
            <div class="modal-body">
               <p>Please login to ask all the questions your hear desires <span class = "fa fa-heart-o"></span></p>
               <button style = "" type="button" class="btn btn-default" data-dismiss="modal">Login</button>
               <button style = "" type="button" class="btn btn-default" data-dismiss="modal">Login with Facebook</button>
            </div>
            <div class="modal-footer">
               <button style = "" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>
      </div>
   <!-- LOGIN Modal -->
   <script>
      function showNoLogin() {
      	$('#noLogin').modal('show'); 
      }
      
      
      function glow(id) {
      $(id).css("background-color","#F7FBFF");
      }
         
      function unGlow(id) {
      $(id).css("background-color","");
      }
      
      function loadQuestionURL(url) {
      	window.location.href = "/ShouldIorV1/Question/shouldi/" + url;
      }
      	 
       $(function(){
             $(".element").typed({
                 strings: ["Start a Poll,^700 It's Easy."],
                 typeSpeed: 90,
      		cursorChar: "|",			  
      		backDelay: 500,
      		callback: function(){
      			// $(".typed-cursor").css("display","none");
      			}
             });
         });
           
      
      
      
   </script>
   </body>
</html>