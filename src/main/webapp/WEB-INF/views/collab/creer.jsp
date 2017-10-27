<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Editer banque collaborateur</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
        crossorigin="anonymous">
    <link rel="stylesheet" href="./monStyle.css">

</head>

<body class="container-fluid">
    <!--NavBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
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
    <div class="row">
        <div class="text-center col-5">
            <img src="./images/pdg.jpg" class="mt-5" alt="image collaborateur" width="150" height="200" />
        </div>
        <div class="col-7">
            <div class="form-row">
                <div class="col-9">
                    <h4>BARBASTE Clément - 1654556XDX</h4>
                </div>
                <div class="col-1 float-right">
                    <label class="form-label" for="caseCocherDesactiver">Désactiver</label>
                </div>
                <div class="col-2 float-left">
                        <input type="checkbox" id="caseCocherDesactiver" class="mt-2">
                    </div>
            </div>
            <form>
                <div id="accordion" role="tablist">
                    <div class="card">
                        <div class="card-header" role="tab" id="headingOne">
                            <h5 class="mb-0">
                                <a data-toggle="collapse" href="#collapseIdentite" aria-expanded="true" aria-controls="collapseOne">
                                    Identité
                                </a>
                            </h5>
                        </div>
                        <div id="collapseIdentite" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <form>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputGender">Civilité</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <select id="inputGender" class="form-control">
                                                <option selected>Male</option>
                                                <option>Female</option>
                                                <option>Autre</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputNom">Nom</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <input type="text" class="form-control" id="inputNom" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputPrenom">Prénom</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <input type="text" class="form-control" id="inputPrenom" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputDdn">Date de naissance</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <input type="date" class="form-control" id="inputDdn" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputAddr">Addresse</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <textarea type="date" class="form-control" id="inputAddr" rows="3">
                                                    </textarea>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputNss">Numéro de sécurité social</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <input type="number" class="form-control" id="inputNss" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputTel">Téléphone</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <input type="tel" class="form-control" id="inputTel" placeholder="">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab" id="headingPoste">
                            <h5 class="mb-0">
                                <a data-toggle="collapse" href="#collapsePoste" aria-expanded="true" aria-controls="collapseOne">
                                    Poste
                                </a>
                            </h5>
                        </div>
                        <div id="collapsePoste" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <form>
                                    <div class="form-row">
                                        <div class="form-group col-3">
                                            <label class="float-right" for="inputDep">Département</label>
                                        </div>
                                        <div class="form-group col-9">
                                            <select id="inputDep" class="form-control">
                                                <option selected>Comptabilité</option>
                                                <option>Direction</option>
                                                <option>...</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-5">
                                            <label class="float-right" for="inputNomPoste">Nom</label>
                                        </div>
                                        <div class="form-group col-7">
                                            <input type="text" class="form-control" id="inputNomPoste" placeholder="">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab" id="headingCoorBanc">
                            <h5 class="mb-0">
                                <a data-toggle="collapse" href="#collapseCoorBanc" aria-expanded="true" aria-controls="collapseOne">
                                    Coordonnées bancaires
                                </a>
                            </h5>
                        </div>
                        <div id="collapseCoorBanc" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <form>
                                    <div class="form-row">
                                        <div class="form-group col-3">
                                            <label class="float-right" for="inputIBAN">IBAN</label>
                                        </div>
                                        <div class="form-group col-9">
                                            <input type="text" class="form-control" id="inputIBAN" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-3">
                                            <label class="float-right" for="inputBIC">BIC</label>
                                        </div>
                                        <div class="form-group col-9">
                                            <input type="text" class="form-control" id="inputBIC" placeholder="">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <input type="submit" class=" mt-2 btn btn-primary float-right" value="Enregistrer" />
                    </div>
                </div>
            </form>
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