<%@page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Nouveau collaborateur</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/style/monStyle.css">
    <script src="<%=request.getContextPath()%>/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
  <script>
  $(document).ready(function(){
	  $("#btnPopup").on("click", function(e){
		$("#dispTypedNom").html($("#formNom").val());
		$("#dispTypedPrenom").html($("#formPrenom").val());
		$("#dispTypedDdn").html($("#formDtn").val());
		$("#dispTypedAddr").html($("#formAddr").val());
		$("#dispTypedNss").html($("#formNss").val());
	  });
	  
	  $("#formNom").blur(function(e) {
  		var str = $("#formNom").val().match(/(\w )+/);
  		if(str == null){
  			$("#formNom").addClass("invalid");
  		}
  	});
  });
  
  function valider(){
	  document.forms[0].action="<%=request.getContextPath()%>/collaborateur/creer";
	  document.forms[0].method="POST";
	  document.forms[0].submit();
  }
  </script>
</head>

<body class="container-fluid">

  <!--NavBar-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
      <!--<img src="/assets/brand/bootstrap-solid.svg" width="30" height="30" alt="">-->
      <h1>Logo</h1>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="./lister.html">Collaborateurs
                    <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./statistiques.html">Statistiques
                    <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./activites.html">Activités
                    <span class="sr-only">(current)</span>
                </a>
            </li>
        </ul>
    </div>
  </nav>
  <!-- Titre-->
  <h1>Nouveau collaborateurs</h1>
  <!-- formulaire-->
  <form id="needs-validation" class="col" novalidate>
    <div class="form-group row">
      <div class="col-sm-2"></div>
      <label for="formNom" class="col-sm-2 col-form-label">Nom</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="formNom" name="nom" placeholder="" required>
        <div class="invalid-feedback">
          Le nom est obligatoire.
        </div>
      </div>
    </div>
    <div class="form-group row">
      <div class="col-sm-2"></div>
      <label for="formPrenom" class="col-sm-2 col-form-label">Prénom</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="formPrenom" name="prenom" placeholder="" required>
        <div class="invalid-feedback">
          Le Prénom est obligatoire.
        </div>
      </div>
    </div>
    <div class="form-group row">
      <div class="col-sm-2"></div>
      <label for="formDtn" class="col-sm-2 col-form-label">Date de naissance</label>
      <div class="col-sm-6">
        <input type="date" class="form-control" id="formDtn" name="ddn" placeholder="" required>
        <div class="invalid-feedback">
          La date de naissance est invalide.
        </div>
      </div>
    </div>
    <div class="form-group row">
      <div class="col-sm-2"></div>
      <label for="formAddr" class="col-sm-2 col-form-label">Adresse</label>
      <div class="col-sm-6">
        <textarea class="form-control" id="formAddr" name="addr" rows="3" required></textarea>
        <div class="invalid-feedback">
          L'addresse est obligatoire.
        </div>
      </div>
    </div>

    <div class="form-group row">
      <div class="col-sm-2"></div>
      <label for="colFormLabel" class="col-sm-2 col-form-label">Numéro de sécurité sociale</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="formNss" name="nss" placeholder="" required>
        <div class="invalid-feedback">
          Le numéro de sécurité sociale est obligatoire.
        </div>
      </div>
    </div>
    <!-- Bouton trigger modal-->
    <div class="form-group row">
      <div class="col-sm-2"></div>
      <div class="col-sm-8">
        <button type="button" class="btn btn-primary float-right" id="btnPopup" data-toggle="modal" data-target="#exampleModal">Créer</button>
      </div>
    </div>
  </form>
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Création d'un collaborateur</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p>Vous êtes sur le point de créer un nouveau collaborateur:</p>
          <div class="row">
            <div class="col">
              <div class="row">
                <div class="col">Nom</div>
                <div class="col" id="dispTypedNom"></div>
              </div>
              <div class="row">
                <div class="col">Prénom</div>
                <div class="col" id="dispTypedPrenom"></div>
              </div>
              <div class="row">
                <div class="col">Date de naissance</div>
                <div class="col" id="dispTypedDdn"></div>
              </div>
              <div class="row">
                <div class="col">Addresse</div>
                <div class="col" id="dispTypedAddr"></div>
              </div>
              <div class="row">
                <div class="col">Numéro de sécurité sociale</div>
                <div class="col" id="dispTypedNss"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          
          	<button type="button" onClick="valider();" class="btn btn-primary">Save changes</button>
          
        </div>
      </div>
    </div>
  </div>
</body>
</html>