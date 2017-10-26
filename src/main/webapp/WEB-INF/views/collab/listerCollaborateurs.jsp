<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Lister les collaborateurs</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
    crossorigin="anonymous">
  <link rel="stylesheet" href="./monStyle.css">
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


  <!-- Partie haute -->
  <div class="form-group row">
    <!-- Btn ajouter nouveau collaborateur-->
    <div class="col-sm">
      <button id="btnNouvCollabo" href="./creer.html" type="button" class="btn btn-primary">Créer nouveau collaborateur</button>
    </div>
  </div>
  <h1>Les collaborateurs</h1>
<ul>
<%
List<String> listeNoms =(List<String>)request.getAttribute("listeNoms");
for (String nom : listeNoms) {

%>
<li><%= nom %></li>
<%
}
%>
</ul>
  </div>
  <!-- Barre de recherche-->
  <form>
    <div class="row">
      <div class="form-group col-5">
        <label class="form-label float-right" for="rechercheByName">Rechercher un nom ou un prénom qui commence par :</label>
      </div>
      <div class="form-group col-2">
        <input id="rechercheByName" class="form-control float-left" type="text" />
      </div>
      <div class="form-group col-1">
        <button id="btnRechercher" type="button" class="btn-sm btn-primary">Rechercher</button>
      </div>
      <div class="form-group col-1">
        <input type="checkbox" id="checkBoxCollaboDesact" class="float-right">
      </div>
      <div class="form-group col-3">
        <label class="form-label float-left" for="checkBoxCollaboDesact">Voir les collaborateurs désactivés</label>
      </div>
    </div>
    <div class="row">
      <div class="form-group col-5">
        <label class="form-label float-right" for="filterDepartement">Filtrer par département :</label>
      </div>
      <div class="form-group col-2">
        <select class="form-control">
          <option selected>Tous</option>
          <option>Comptabilité</option>
          <option>Ressources humaines</option>
        </select>
      </div>
    </div>
  </form>
  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-header">BARBASTE Clément</div>
        <div class="row">
          <div class="col-3">
            <img class="mt-3 mb-3 mr-3 ml-3" width="80px" height="100px" src="./images/pdg.jpg" alt="Card image photo collaborateur">
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
                <div class="row">PDG</div>
                <div class="row">31</div>
                <div class="row">monEmail@gmail.com</div>
                <div class="row">00 11 22 33 44</div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <a href="#" class="btn btn-primary float-right">Editer</a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="card-header">BARBASTE Clément</div>
        <div class="row">
          <div class="col-3">
            <img class="mt-3 mb-3 mr-3 ml-3" width="80px" height="100px" src="./images/pdg.jpg" alt="Card image photo collaborateur">
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
                <div class="row">PDG</div>
                <div class="row">31</div>
                <div class="row">monEmail@gmail.com</div>
                <div class="row">00 11 22 33 44</div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <a href="#" class="btn btn-primary float-right">Editer</a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="card-header">BARBASTE Clément</div>
        <div class="row">
          <div class="col-3">
            <img class="mt-3 mb-3 mr-3 ml-3" width="80px" height="100px" src="./images/pdg.jpg" alt="Card image photo collaborateur">
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
                <div class="row">PDG</div>
                <div class="row">31</div>
                <div class="row">monEmail@gmail.com</div>
                <div class="row">00 11 22 33 44</div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <a href="#" class="btn btn-primary float-right">Editer</a>
        </div>
      </div>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col">
      <div class="card">
        <div class="card-header">BARBASTE Clément</div>
        <div class="row">
          <div class="col-3">
            <img class="mt-3 mb-3 mr-3 ml-3" width="80px" height="100px" src="./images/pdg.jpg" alt="Card image photo collaborateur">
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
                <div class="row">PDG</div>
                <div class="row">31</div>
                <div class="row">monEmail@gmail.com</div>
                <div class="row">00 11 22 33 44</div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <a href="#" class="btn btn-primary float-right">Editer</a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="card-header">BARBASTE Clément</div>
        <div class="row">
          <div class="col-3">
            <img class="mt-3 mb-3 mr-3 ml-3" width="80px" height="100px" src="./images/pdg.jpg" alt="Card image photo collaborateur">
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
                <div class="row">PDG</div>
                <div class="row">31</div>
                <div class="row">monEmail@gmail.com</div>
                <div class="row">00 11 22 33 44</div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <a href="#" class="btn btn-primary float-right">Editer</a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="card-header">BARBASTE Clément</div>
        <div class="row">
          <div class="col-3">
            <img class="mt-3 mb-3 mr-3 ml-3" width="80px" height="100px" src="./images/pdg.jpg" alt="Card image photo collaborateur">
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
                <div class="row">PDG</div>
                <div class="row">31</div>
                <div class="row">monEmail@gmail.com</div>
                <div class="row">00 11 22 33 44</div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <a href="#" class="btn btn-primary float-right">Editer</a>
        </div>
      </div>
    </div>
  </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
  crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
  crossorigin="anonymous"></script>

</html>