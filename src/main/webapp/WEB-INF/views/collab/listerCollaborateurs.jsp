<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="dev.sgp.entite.Departement"%>
<%@page import="dev.sgp.util.Constantes"%>
<%@page import="java.util.List"%>
<%@page import="dev.sgp.web.ListerCollaborateursController"%>
<!DOCTYPE html>
<html lang="fr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Lister les collaborateurs</title>

<script src="<%=request.getContextPath()%>/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/style/monStyle.css">

</head>

<body class="container-fluid">
	<!--NavBar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> <img
			src="/assets/brand/bootstrap-solid.svg" width="30" height="30" alt="">
			<h1>Logo</h1>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="./lister.html">Collaborateurs<span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="./statistiques.html">Statistiques <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="./activites.html">Activités <span class="sr-only">(current)</span>
				</a></li>
			</ul>
		</div>
	</nav>


	<!-- Partie haute -->
	<div class="form-group row">
		<!-- Btn ajouter nouveau collaborateur-->
		<div class="col-sm">
			<button id="btnNouvCollabo" href="./creer.html" type="button"
				class="btn btn-primary float-right mt-2">Créer nouveau
				collaborateur</button>
		</div>
	</div>
	<h1>Les collaborateurs</h1>

	<!-- Barre de recherche-->
	<form>
		<div class="row">
			<div class="form-group col-5">
				<label class="form-label float-right" for="rechercheByName">Rechercher
					un nom ou un prénom qui commence par :</label>
			</div>
			<div class="form-group col-2">
				<input id="rechercheByName" class="form-control float-left"
					type="text" />
			</div>
			<div class="form-group col-1">
				<button id="btnRechercher" type="button" class="btn-sm btn-primary">Rechercher</button>
			</div>
			<div class="form-group col-1">
				<input type="checkbox" id="checkBoxCollaboDesact"
					class="float-right">
			</div>
			<div class="form-group col-3">
				<label class="form-label float-left" for="checkBoxCollaboDesact">Voir
					les collaborateurs désactivés</label>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-5">
				<label class="form-label float-right" for="filterDepartement">Filtrer
					par département :</label>
			</div>
			<div class="form-group col-2">
				<select class="form-control">
					<option selected>Tous</option>
					<%
						for (Departement d : Constantes.DEPART_SERVICE.listerDepartements()) {
					%>
					<option><%=d.getNom()%></option>
					<%
						}
					%>
				</select>
			</div>
		</div>
	</form>
	<div class="row">
		<%
			for (Collaborateur c : Constantes.COLLAB_SERVICE.listerCollaborateurs()) {
		%>
		<div class="col-sm-3">
			<div class="card mt-3">
				<div class="card-header"><%=c.getNom() %> <%=c.getPrenom() %></div>
				<div class="row">
					<div class="col-3">
						<img class="mt-3 mb-3 mr-3 ml-3" width="80px" height="100px"
							src="<%=request.getContextPath()%>/<%=c.getPhoto()%>"
							alt="Card image photo collaborateur" />
					</div>
					<div class="col-9">
						<div class="row">
							<!--Libels -->
							<div class="col">
								<div class="row">Fonction :</div>
								<div class="row">Département :</div>
								<div class="row">Email :</div>
								<div class="row">Téléphone :</div>
							</div>
							<!--Data -->
							<div class="col">
								<div class="row"><%=c.getIntitulePoste() %></div>
								<div class="row"><%=c.getDepartement().getNom() %></div>
								<div class="row"><%=c.getEmailPro() %></div>
								<div class="row"><%="None" %></div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-footer">
				<a href="<%=request.getContextPath()%>/collaborateur/editer?id=<%=c.getId()%>" class="btn btn-primary float-right">Editer</a>
				</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
</body>

</html>