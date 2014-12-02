<%@ page import="com.igpse.PatientMiRNA" %>
<%@ page import="com.igpse.MiRNA" %>
<!DOCTYPE html>
<html>
	<head>
    <meta name="layout" content="main">
    <link rel="stylesheet" href="<g:resource dir="web-app/css/bootstrap/bootstrap/css" file="bootstrap.css"/>"/> 
		<g:set var="entityName" value="${message(code: 'patientMiRNA.label', default: 'PatientMiRNA')}" />
		<title>Select Patient MiRNA</title>

		<meta charset="utf-8">
	    <title> Visual Cluster Analysis </title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="Hao Ding" >
	    <r:require modules="bootstrap"/>
	</head>
	<body>
	    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>

	  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#"> Visual Cluster Analysis </a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li><g:link uri="/">Home</g:link></li>              
              <li class="active"><g:link controller="PatientMiRNA" action="selectMiRNA">Cluster MiRNA</g:link></li>
              <li><g:link controller="PatientMRNA" action="selectMRNA">Cluster MRNA</g:link></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
		<h1>Choose any number of MiRNA from this list...</h1>
		<g:form url="[action:'listMiRNA']"  name="listMiRNA" >
			<g:select  from="${MiRNA.list()}" name="mirnaIds" value="" multiple="multiple" optionKey="id" optionValue="name" style="height: 50em; width: 30em; margin-left: 5em; padding-left: 1em;" required=""/>
			<g:select name="numOfClusters" from="${1..10}" value="" noSelection="['':'-Choose number of Clusters-']" required=""/>
			<g:submitButton  class="btn btn-primary btn-large" name="mirnaList" class="save" value="List MiRNA Values" />
		</g:form>

	</body>
</html>