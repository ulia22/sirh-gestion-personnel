<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Statistiques</title>
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
        <div class="col">
            <input type="button" href="nouveau.html" class=" mt-2 btn btn-primary float-right" value="Ajouter un nouveau collaborateur" />
        </div>
    </div>
    <div class="row">
        <div class="col-3">
            <h1>Statistiques</h1>
        </div>
    </div>

    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col-4">Chemin</th>
                <th scope="col-2">Nombre de visites</th>
                <th scope="col-1">Min (ms)</th>
                <th scope="col-1">Max (ms)</th>
                <th scope="col-4">Moyenne (ms)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">/collaborateurs/editer</th>
                <td>500</td>
                <td>10</td>
                <td>1000</td>
                <td>500</td>
            </tr>
            <tr>
                <th scope="row">/collaborateurs/lister</th>
                <td>125</td>
                <td>5</td>
                <td>600</td>
                <td>90</td>
            </tr>
            <tr>
                <th scope="row">/collaborateurs/nouveau</th>
                <td>200</td>
                <td>2</td>
                <td>58</td>
                <td>789</td>
            </tr>
        </tbody>
    </table>

</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
    crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
    crossorigin="anonymous"></script>

</html>