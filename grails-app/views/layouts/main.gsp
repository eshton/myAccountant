<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><g:layoutTitle /></title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=400, initial-scale=0.8"/>  

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
    <link rel="stylesheet" href="${resource(dir:'css',file:'bootstrap.min.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png"/>

	<!-- Le scripts -->
	<g:javascript library="jquery" plugin="jquery"/>

    <g:layoutHead />
  </head>

  <body>

    <div class="topbar">
      <div class="fill">
        <div class="container">
          <a class="brand" href="#">myAccountant</a>

          <ul class="nav">
            <li class="active"><g:link controller="home" action="index">Home</g:link></li>
            <li><g:link controller="transaction" action="list">List</g:link></li>
            <li><g:link controller="transaction" action="create">Create</g:link></li>
          </ul>
          <p class="pull-right"></p>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="content">
        <!-- Main hero unit for a primary marketing message or call to action -->
        <!-- div class="hero-unit">
          I don't know what will be here ...
        </div -->

    	<div class="page-header">
            <sec:ifLoggedIn>
            	Logged in as <a href="#"><sec:username/></a>. <g:link controller="logout">Logout.</g:link>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
            	<g:link controller="login" action="auth">Login</g:link>
            </sec:ifNotLoggedIn>    	
    	</div>
    	<div class="row">
	        <g:if test="${flash.error}">
	          <div class="alert-message error">${flash.error}</div>
	        </g:if>
	        <g:if test="${flash.success}">
	          <div class="alert-message success">${flash.success}</div>
	        </g:if>
	        <g:if test="${flash.notice}">
	          <div class="alert-message notice">${flash.notice}</div>
	        </g:if>
	        
	        <g:layoutBody />    	
    	</div>
      </div>
      <footer>
        <p>&copy;  2011. - A&H Solutions Limited (<a href="http://ahsoftware.co.uk">ahsoftware.co.uk</a>)</p>
      </footer>
    </div>

  </body>
</html>