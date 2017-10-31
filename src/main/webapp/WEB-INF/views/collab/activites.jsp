<!DOCTYPE html>
<html lang="fr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Activites</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./monStyle.css">

</head>

<body class="container-fluid">
	<!--NavBar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">
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
				<li class="nav-item"><a class="nav-link" href="./lister.html">Collaborateurs
						<span class="sr-only">(current)</span>
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
	<div class="row">
		<div class="col">
			<h1>Activités depuis le démarrage de l'application</h1>
		</div>
	</div>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col-4">Date/Heure</th>
				<th scope="col-8">Libell�</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">10/10/2017 10:50:52</th>
				<td>Création d'un nouveau collaborateur - matricule : XXXXXX(
					<a href="#">lien</a>)
				</td>
			</tr>
			<tr>
				<th scope="row">10/10/2017 10:52:52</th>
				<td>Modification d'un collaborateur - matricule : XXXXXX( <a
					href="#">lien</a>)
				</td>
			</tr>
		</tbody>
	</table>

</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

</html>