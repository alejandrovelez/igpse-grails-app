<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Interactive Patient Stratification</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 3em 5em;
				padding-bottom: 3em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
		<r:require modules="bootstrap"/>
	</head>
	<body>
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
              			<li class="active"><g:link uri="/">Home</g:link></li>
              			<li><g:link controller="PatientMiRNA" action="selectMiRNA">Cluster MiRNA</g:link></li>
              			<li><g:link controller="PatientMRNA" action="selectMRNA">Cluster MRNA</g:link></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
	<h1>Interactive Patient Stratification</h1>
		<div id="page-body">
			<h2>Abstract:</h2>
			<h3>Background:</h3>
			<p>Cancers are highly heterogeneous with different subtypes. These subtypes often possess different genetic variants, present different pathological phenotypes, and most importantly, show various clinical outcomes such as varied prognosis and response to treatment and likelihood for recurrence and metastasis. Recently, integrative genomics (or panomics) approaches are often adopted with the goal of combining multiple types of omics data to identify integrative biomarkers for stratification of patients into groups with different clinical outcomes. </p>
		</div>
	</body>
</html>
