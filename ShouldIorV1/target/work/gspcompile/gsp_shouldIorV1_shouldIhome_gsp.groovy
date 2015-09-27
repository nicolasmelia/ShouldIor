import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_shouldIorV1_shouldIhome_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/shouldI/home.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(3)
createTagBody(2, {->
createClosureForHtmlPart(4, 3)
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(5)
invokeTag('resource','g',14,['dir':("css"),'file':("bootstrap.css")],-1)
printHtmlPart(6)
invokeTag('resource','g',15,['dir':("css"),'file':("buttons.css")],-1)
printHtmlPart(6)
invokeTag('resource','g',16,['dir':("css"),'file':("customBoot.css")],-1)
printHtmlPart(6)
invokeTag('resource','g',17,['dir':("css"),'file':("awesome-bootstrap-checkbox.css")],-1)
printHtmlPart(7)
invokeTag('resource','g',19,['dir':("js"),'file':("bootstrap.min.js")],-1)
printHtmlPart(8)
invokeTag('javascript','g',21,['src':("facebookLogin.js")],-1)
printHtmlPart(1)
invokeTag('javascript','g',22,['src':("dataAccess.js")],-1)
printHtmlPart(9)
invokeTag('resource','g',25,['dir':("css"),'file':("typehead-searchBar.css")],-1)
printHtmlPart(10)
invokeTag('resource','g',26,['dir':("js/typedJS"),'file':("typed.min.js")],-1)
printHtmlPart(11)
invokeTag('resource','g',28,['dir':("js/typeaheadJS"),'file':("typeahead.jquery.min.js")],-1)
printHtmlPart(12)
invokeTag('resource','g',31,['dir':("js/chart"),'file':("Chart.min.js")],-1)
printHtmlPart(13)
})
invokeTag('captureHead','sitemesh',39,[:],1)
printHtmlPart(14)
createTagBody(1, {->
printHtmlPart(14)
if(true && (session.name)) {
printHtmlPart(15)
}
else {
printHtmlPart(16)
}
printHtmlPart(17)
expressionOut.print(createLink(controller: 'ShouldI', action: 'home'))
printHtmlPart(18)
expressionOut.print(resource(dir:'images',file:'logo.png'))
printHtmlPart(19)
if(true && (session.name)) {
printHtmlPart(20)
expressionOut.print(createLink(controller: 'User', action: 'myProfile', params: [category: 'My Notifications']))
printHtmlPart(21)
expressionOut.print(notifyCount)
printHtmlPart(22)
expressionOut.print(createLink(controller: 'Question', action: 'askShouldI'))
printHtmlPart(23)
expressionOut.print(createLink(controller: 'ShouldI', action: 'category', params: [category: 'Trending']))
printHtmlPart(24)
}
else {
printHtmlPart(25)
expressionOut.print(createLink(controller: 'ShouldI', action: 'category', params: [category: 'Trending']))
printHtmlPart(24)
}
printHtmlPart(26)
if(true && (session.name)) {
printHtmlPart(27)
expressionOut.print(createLink(controller: 'User', action: 'getProfileImage', params: [id: session.userID]))
printHtmlPart(28)
expressionOut.print(session.name)
printHtmlPart(29)
expressionOut.print(createLink(controller: 'User', action: 'myProfile', params: [category: 'My Questions']))
printHtmlPart(30)
expressionOut.print(createLink(controller: 'ShouldI', action: 'help'))
printHtmlPart(31)
}
else {
printHtmlPart(32)
}
printHtmlPart(33)
expressionOut.print(resource(dir:'images',file:'logoDark.png'))
printHtmlPart(34)
for( _it859653366 in (trendingQuestions) ) {
changeItVariable(_it859653366)
printHtmlPart(35)
expressionOut.print(createLink(controller: 'Question', action: 'shouldi', params: [id: it.questionID]))
printHtmlPart(36)
if(true && (it.answerOneImage)) {
printHtmlPart(37)
expressionOut.print(createLink(controller: 'Question', action: 'getAnswerImageById', params: [id: it.questionID, imgNum: '1']))
printHtmlPart(38)
}
else {
printHtmlPart(39)
expressionOut.print(resource(dir:'images',file:'noImg.png'))
printHtmlPart(40)
}
printHtmlPart(41)
expressionOut.print(it.userName)
printHtmlPart(42)
expressionOut.print(it.questionTitle)
printHtmlPart(43)
expressionOut.print(it.totalVotes)
printHtmlPart(44)
expressionOut.print(it.totalViews)
printHtmlPart(45)
}
printHtmlPart(46)
for( _it889961821 in (randomQuestions) ) {
changeItVariable(_it889961821)
printHtmlPart(47)
expressionOut.print(createLink(controller: 'Question', action: 'shouldi', params: [id: it.questionID]))
printHtmlPart(48)
if(true && (it.answerOneImage)) {
printHtmlPart(49)
expressionOut.print(createLink(controller: 'Question', action: 'getAnswerImageById', params: [id: it.questionID, imgNum: '1']))
printHtmlPart(50)
}
else {
printHtmlPart(51)
expressionOut.print(resource(dir:'images',file:'noImg.png'))
printHtmlPart(52)
}
printHtmlPart(53)
expressionOut.print(it.questionTitle)
printHtmlPart(54)
}
printHtmlPart(55)
expressionOut.print(createLink(controller: 'Authentication', action: 'loginFaceBook'))
printHtmlPart(56)
expressionOut.print(createLink(controller: 'Authentication', action: 'loginReddit'))
printHtmlPart(57)
expressionOut.print(yesCount)
printHtmlPart(58)
expressionOut.print(noCount)
printHtmlPart(59)
})
invokeTag('captureBody','sitemesh',314,['style':("background-color: #F6F6F6!important; background-image:url('${resource(dir: "images", file: "wall1.jpg")}'); margin-bottom: 20px; background-size: cover;  background-attachment: fixed; min-width: 320px;  ")],1)
printHtmlPart(60)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1443321357008L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
