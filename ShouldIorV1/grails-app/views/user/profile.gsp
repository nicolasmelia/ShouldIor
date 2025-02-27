<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <meta name="description" content="ShouldI.fm is a place where you can ask the world questions and get honest answers. Start a poll, it's free and easy!">
      <meta name="author" content="ShouldI.fm">
      <link rel="shortcut icon" href="${resource(dir:'images',file:'logoBrowser.png')}">
      <title>ShouldI.fm - Profile</title>
       <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      
      <!-- Bootstrap core CSS -->
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='bootstrap.css'/>">
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='customBoot.css'/>">
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='buttons.css'/>">
      <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
      <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='awesome-bootstrap-checkbox.css'/>">
      <!-- Facebook -->			
      <g:javascript src="facebookLogin.js" />
      <!-- JQUERY -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body style = "background-color: #f5f8fa!important;" >
           <input id = "facebookLoginLink" type="hidden" name="perdif" value="${createLink(controller: 'Authentication', action: 'loginFaceBook')}">
   
      <g:if test="${session.name}">
         <input id = "sessionCheck" type="hidden" name="sess" value="true">
      </g:if>
      <g:else>
         <input id = "sessionCheck" type="hidden" name="sess" value="false">
      </g:else>
  <nav class="navbar navbar-inverse navbar-fixed-top" >
      <div class="container">
         <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a href = "${createLink(controller: 'ShouldI', action: 'home')}" ><img src="${resource(dir:'images',file:'logo.png')}"   class="navbar-brand"/></a>
         </div>
         <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
               <g:if test="${session.name}">
                  <li><a href="${createLink(controller: 'User', action: 'myProfile', params: [category: 'My Notifications'])}"><span class= 'fa fa-bell-o'></span><span style = "padding-left: 6px;" >${notifyCount}</span></a></li>
                  <li><a href = "${createLink(controller: 'Question', action: 'askShouldIQuick')}" ><span class= 'fa fa-pencil-square-o'></span><span style = "padding-left: 6px;" >Ask</span></a></li>
                  <li><a href = "${createLink(controller: 'ShouldI', action: 'category', params: [category: 'Trending'])}" ><span class= 'fa fa-book'></span><span style = "padding-left: 6px;" >Browse Categories</span></a></li>
               </g:if>
               <g:else>
                  <li><a href = "${createLink(controller: 'Question', action: 'askShouldIQuick')}" ><span class= 'fa fa-pencil-square-o'></span><span style = "padding-left: 6px;" >Ask</span></a></li>
                  <li><a href = "${createLink(controller: 'ShouldI', action: 'category', params: [category: 'Trending'])}" ><span class= 'fa fa-book'></span><span style = "padding-left: 6px;" >Browse Categories</span></a></li>
               </g:else>
            </ul>
            <g:if test="${session.name}">
               <ul class="nav navbar-nav navbar-right" style = "padding: -10px;" >
                  <li class="dropdown" style = "">
                     <a href="#" style = "" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                     <img style = "display:inline-block; width: 25px; height: 25px; margin-right: 4px; margin-top: -25px;  margin-bottom: -25px;" src = "${createLink(controller: 'User', action: 'getProfileImage', params: [id: session.userID])}" />			
                     ${session.name}
                     <span class="fa fa-caret-down"></span></a>
                     <ul class="dropdown-menu">
                        <li><a href = "${createLink(controller: 'User', action: 'myProfile', params: [category: 'My Questions'])}"><span class= 'fa  fa-user'></span><span style = "padding-left: 5px;" >My Profile</span></a></li>
                        <li><a href = "${createLink(controller: 'ShouldI', action: 'home')}" ><span class= 'fa fa-home'></span><span style = "padding-left: 6px;" >Home</span></a></li>
                        <li><a href = "${createLink(controller: 'ShouldI', action: 'help')}" ><span class= 'fa fa-info-circle'></span><span style = "padding-left: 6px;" >Help</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a  onClick = "logout('${createLink(controller: 'ShouldI', action: 'home')}', '${createLink(controller: 'Authentication', action: 'logout')}' )" href="#"><span class= 'fa fa-sign-out'></span><span style = "padding-left: 5px;" >Log Out</span></a></li>
                     </ul>
                  </li>
               </ul>
            </g:if>
            <g:else>
               <ul class="nav navbar-nav navbar-right">
                  <li><a id = "facebookLoginMenu" href = "#"  style = ""  onClick = "loginFacebook('${createLink(controller: 'Authentication', action: 'loginFaceBook')}')">Login with <span href="#about" style = "padding-left: 4px; color:#5BC0DE;" class='fa fa-facebook-official'></span> </a></li>
               </ul>
               <ul class="nav navbar-nav navbar-right">
                  <li><a id = "facebookLoginMenu" href = "#"  style = "" onClick = "showNoLogin()" >Login/Signup</a></li>
               </ul>
            </g:else>
         </div>
         <!--/.nav-collapse -->
      </div>
   </nav>
      
      <div class="container" style = "max-width: 825px; margin-top: 75px; margin-bottom: 20px; " >
         <!-- QUESTION BLOCK -->	
            <!-- PROFILE INFORMATION -->	
            <div  class="contentContainer" style = "margin: 0px; padding: 10px 10px 0px 10px; box-shadow:0 0 0px rgba(0, 0, 0, 0.0); " >
               <span style = "margin: auto; width: 100%; text-align: center; color: #5C5C5C; display: block; font-size: 18px; margin-bottom: 0px; margin-top: 2px;">
             
              <g:if test = "${user.certified == true}" >
          	   <span style = "color: #FFD700;" class = "fa fa-check-square-o" ></span> 
             </g:if>
             
               <b>${user.name}</b>
               
               </span>
               <hr style = "padding:0px; margin-top: 8px; margin-bottom: 14px; ">
               
               <div style = "text-align: left; display: inline-block; width: 80px; height: 80px;">
               <div style = "display: block; width: 80px; height: 80px; background-image: url('${createLink(controller: 'User', action: 'getProfileImage', params: [id: user.userID])}'); background-size: cover; background-repeat: no-repeat;   background-position: center center; padding-left: 5px;"> 
               </div>
               </div>
             
               <div style = "display: inline-block; padding-bottom:0px; margin-right: 4px; margin-left: 4px; vertical-align: top;  ">
                 
                
                 <g:if test = "${following == true}" >
                   <a  style = "margin-left: 1px; cursor: pointer;  margin-top: -2px; display: block; font-size: 15px;" id = "followLink" onClick = "followUser('${createLink(controller: 'User', action: 'followUser')}', '${user.userID}')" ><span class = "fa fa-check-circle-o" ></span>  Following</a>
                 </g:if>
                 <g:else>
                   <g:if test="${session.name}">                 
                    <a style = "margin-left: 1px; cursor: pointer; margin-top: -2px; display: block; font-size: 15px;" id = "followLink" onClick = "followUser('${createLink(controller: 'User', action: 'followUser')}', '${user.userID}')"  ><span class = "fa fa-user-plus" ></span> Follow</a>  
                	</g:if>
                	<g:else>
                	 <a style = "margin-left: 1px; cursor: pointer; margin-top: -2px; display: block; font-size: 15px;" id = "followLink" onClick = "showNoLogin()"  ><span class = "fa fa-user-plus" ></span> Follow</a>           	
                	</g:else>
                 </g:else>
                 
                  <span style = "margin-left: 1px; color: #5C5C5C; margin-top: -2px; display: block; font-size: 15px;">Questions: ${user.totalQuestions}</span>
                  <span style = "margin-left: 1px; color: #5C5C5C; margin-top: -2px; display: block; font-size: 15px;">Followers: ${user.followerCount}</span>
                  <span style = "margin-left: 1px; color: #5C5C5C; margin-top: -2px; display: block; font-size: 15px;">Reached: ${user.peopleReached}</span>               
              
               </div>
                              	             
               <div style = "width: 100%; margin: auto; padding: 0px; " >
               	<p style =  "display: block; font-size: 15px;  margin: auto; margin-top: 7px; margin-bottom: 12px; width: 100%;">
               	    <g:if test="${user.about != ''}">
               		  ${raw(user.about)}		           
               	    </g:if>
               	    <g:else>
               		  Apparently, this user prefers to keep an air of mystery about them.       
               	   	</g:else>
				 </p>
               </div>
               
            </div>
            <!-- PROFILE INFORMATION -->	
            <div  class="contentContainer" style = "border-radius: 0px;  border-top: 0px; border-bottom: 0px; margin: 0px; box-shadow:0 0 0px rgba(0, 0, 0, 0.0);" >
               <div class="dropdown"  style = " width: 100%; margin: auto; display:inline-block; border-radius: 6px 6px 0px 0px;  ">
                  <button class="btn btn-default dropdown-toggle" type="button" style = " width: 100%; border-radius: 0px 0px 0px 0px; border: 0px;  " data-toggle="dropdown">
                  ${category} 
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu" style = "width: 100%; ">
	                  <li><a href = "${createLink(controller: 'User', action: 'profile', params: [category: 'New Questions', id: user.userID])}"><span style = "padding-left: 5px;" >New Questions</span></a></li>                           
	                  <li><a href = "${createLink(controller: 'User', action: 'profile', params: [category: 'Top Questions', id: user.userID])}"><span style = "padding-left: 5px;" >Top Questions</span></a></li>                           
	              	  <li><a href = "${createLink(controller: 'User', action: 'profile', params: [category: 'Favorites', id: user.userID])}"><span style = "padding-left: 5px;" >Favorites</span></a></li> 
	              	  <li><a href = "${createLink(controller: 'User', action: 'profile', params: [category: 'Following', id: user.userID])}"><span style = "padding-left: 5px;" >Following</span></a></li>                                                                            
	               </ul>
               </div>
            </div>
            <!-- QUESTION REPLY -->
            <div  class="contentContainer" style = "border-radius: 0px; margin: 0px; box-shadow:0 0 0px rgba(0, 0, 0, 0.0);" >
               
             
              <div class = "scrollCon" style = "height: 310px; overflow-x: hidden; " >
       
	    <g:if test="${question.isEmpty() && users.isEmpty()}">
		     <p style =  "display: block; color: #d3d3d3; font-size: 15px;  margin: auto; margin-top: 7px; width: 100%; text-align: center;">Nothing to show here...</p>
		</g:if>
               
              <g:if test = "${category != 'Following' }">
               
               <g:each in="${question}">
               
               
                  <table onmouseover="glow(this)" onmouseout="unGlow(this)"  onClick = "loadQuestionURL('${createLink(controller: 'Question', action: 'shouldi', params: [id: it.questionID])}')" style="cursor: default; width: 100%; padding: 8px 4px 8px 4px; display:block;">
                     <tr style = "display:block; max-height: 105px; width: 100%; margin-top: 0px; ">
                        <td style = "min-width: 125px;  height: 100%; text-align:center; vertical-align:top; ">
                           <g:if test="${it.answerOneImage}">
                              <img  style = "max-width:110px; max-height:100px; width: auto; height: auto; margin: auto;   padding: 0px;"    src = "${createLink(controller: 'Question', action: 'getAnswerImageById', params: [id: it.questionID, imgNum: '1', thumb: 'True'])}"/>	
                           </g:if>
                           <g:else>
                              <img  style = "max-width:110px; max-height:100px; width: auto; height: auto; margin: auto;   padding: 0px;  " src="${resource(dir:'images',file:'noImg.png')}"  />	
                           </g:else>
                        </td>
                        <td style = "width: 100%; height:1px; ">
                           <table style="width:100%;  height: 100%; ">
                              <tr  style = "vertical-align: top;" >
                                 <td style = "height: 100%; ">
                                    <span style = "display: block;  font-size: 16px;" >${it.userName}</span> 
                                    <span style = "display:block; font-size: 16px;  color: #6A6A6A; " >${it.questionTitle}</span> 
                                 </td>
                              </tr>
                              <tr  style = "vertical-align: bottom;" >
                                 <td style = "text-align: top;  height: 100%; ">
                                    <span class = "fa fa-line-chart"  style = "color: #5BC0DE; margin-right: 5px;" ></span>${it.totalVotes}
                                    <span class = "fa fa-eye" style = "color: #5BC0DE;   margin-left: 8px; margin-right: 5px; "  > </span>${it.totalViews}
                                 </td>
                              </tr>
                           </table>
                        </td>
                     </tr>
                  </table>
                  <hr style = "padding: 0px; margin: 0px;"/>
               </g:each>
               </g:if>
               
              <g:else>
                  <div  class="row" style = "cursor: default; ">    
	              	  <g:each in="${users}">
	              	   <div style = "overflow: hidden; text-align: center; " onmouseover="glow(this)" onmouseout="unGlow(this)"  onClick = "loadQuestionURL('${createLink(controller: 'User', action: 'profile', params: [id: it.userID, category : 'New Questions'])}')"  class="col-xs-6 col-sm-3 col-md-3">
	                           <img class = "bigViewImg"  src = "${createLink(controller: 'User', action: 'getProfileImage', params: [id: it.userID])}"/>	
	                    		<div class = "questionTitle" >${it.name}</div>
	                     </div>
	              	  </g:each>
                  </div> 
              </g:else>
               
            </div>
            
                            <hr style = "padding:0px; margin-top: 0px; margin-bottom: 0px; ">
            
            
			<div class="btn-group" style = "margin: 10px; " >
                 <g:link  action="profile"  params="[offset: offset, up: 'false', category: category, id: user.userID ]"  style = "padding-top: 2px; padding-bottom: 2px;" class="btn btn-default">
                   		  <span class="fa fa-angle-double-left"></span> Back 
                </g:link>

                 <g:link  action="profile"  params="[offset: offset, up: 'true', category: category, id : user.userID]" style = "padding-top: 2px; padding-bottom: 2px;" class="btn btn-default">
                   		   Next <span class="fa fa-angle-double-right"></span>
                </g:link>
            </div>    
            
            </div>
            <!-- QUESTION REPLY -->
            
                     
      <footer class="footer" style = "margin-top: 0px;  width: 100%;" >
      <div class="container" style = "width: 100%; text-align: left; padding: 0px; ">
      <span style = "font-size: 13px; color: #79cce5;"><a style = "color: #79cce5;"  href = "${createLink(controller: 'ShouldI', action: 'privacyPolicy')}"  >Privacy Policy</a> | </span>
      <span style = "font-size: 13px; color: #79cce5;"><a style = "color: #79cce5;" href = "${createLink(controller: 'ShouldI', action: 'help')}"  >How To</a> | </span>
      <span style = "font-size: 13px; color: #79cce5;"><a style = "color: #79cce5;" href = "${createLink(controller: 'ShouldI', action: 'aboutPollaris')}">Pollaris LLC</a></span>   
      </div>   
  	  </footer>
         
         </div>

         
         
  	     <!-- LOGIN Modal -->
   <div class="modal fade" id="noLogin" role="dialog">
      <div class="modal-dialog">
         <!-- Modal content-->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title"><span href="#about" style = "padding-left: 4px;" class='fa fa-sign-in'> </span> Easy Login</h4>
            </div>
            <div class="modal-body">
               <p>Please login. Choose a network below to login with:</p>
               <button onClick = "loginFacebook('${createLink(controller: 'Authentication', action: 'loginFaceBook')}')" style = "" type="button" class="btn btn-default" data-dismiss="modal">Facebook <span class = "fa fa-facebook"></span></button>
               <button  onClick = "loginReddit('${createLink(controller: 'Authentication', action: 'loginReddit')}')"style = "" type="button" class="btn btn-default" data-dismiss="modal">Reddit <span class = "fa fa-reddit"></span></button>

            </div>
            <div class="modal-footer">
               <button style = "" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>       
         
         

      <!-- Bootstrap core JavaScript
         ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <g:javascript src="dataAccess.js" />
      <script src="<g:resource dir="js" file="bootstrap.min.js" />"></script>
      <g:javascript src="buttonAnswerGlow.js" />
      <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
      <script>
      
		     function glow(id) {
		      	$(id).css("background-color","#f5f8fa");        
		     }
                
             function unGlow(id) {
           		$(id).css("background-color","");
             }
             
             function loadQuestionURL(url) {
             	window.location.href = url;
             }

           
             
      </script>
   </body>
</html>