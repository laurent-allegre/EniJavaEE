<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <meta name="description" content="" />
    <meta name="Keywords" content=" " />
    <meta name="author" content="Laurent" />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
    <script
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <title>Page Nouveau Achat</title>
  </head>
  <body>
    <header>
        <nav class="navbar navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand">ENI-Enchères</a>
            <div class="d-flex">
              <a class="p-2" href="">Enchères</a>
              <a class="p-2" href="">Vendre un article</a>
              <a class="p-2" href="">Mon profil</a>
              <a class="p-2" href="">Déconnexion</a>
            </div>
          </div>
        </nav>
      </header>
    <!--content start-->

    <h1 class="text-center">Nouveau achat</h1>
    <div class="container mt-3">
      <form action="ServletValidantAjoutArticle" method="post">  
        <div class="row">
            <div class="col">
            <img
                src="https://via.placeholder.com/350"
                class="img-fluid rounded-start"
                alt="image de l'article'"
            />
            </div>
            <div class="col">
            <div class="row mb-3">
                <label for="article" class="col-sm-3 col-form-label">Article</label>
                <div class="col-sm-9">
                <input type="text" class="form-control"id="article" name="nomArticle"/>
                </div>
            </div>
            <div class="row mb-3">
                <label for="description" class="col-sm-3 col-form-label">Description</label>
                <div class="col-sm-9">
                <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                </div>
            </div>
            <div class="row mb-3">
                <label for="categories" class="col-sm-3 col-form-label">Catégories</label>
                <div class="col-sm-9">
                <select id="categories" name="categorieArticle" class="form-control">
                    <option selected>choisir</option>
                    <option value="1">Informatique</option>
                    <option value="2">Ameublement</option>
                    <option value="3">Vétements</option>
                    <option value="4">Sport&Loisir</option>
                </select>
                </div>
            </div>
            <div class="row mb-3">
                <label for="photoArticle" class="col-sm-3 col-form-label">Photo de l'article</label>
                <div class="col-sm-9">
                <input type="file" class="form-control-file" id="photoArticle" name="photoArticle" />
                </div>
            </div>
            <div class="row mb-3">
                <label for="miseAPrix" class="col-sm-3 col-form-label">Mise à prix</label>
                <div class="col-sm-9">
                <input type="number" class="form-control" id="miseAPrix" name="miseAPrix" placeholder="Veuillez entrer votre prix">
                </div>
            </div>
            <div class="row mb-3">
                <label for="debutEnchere" class="col-sm-3 col-form-label">Début de l'enchéres</label>
                <div class="col-sm-9">
                <input type="date" class="form-control" id="debutEnchere" name="dateDebutEncheres">
                </div>
            </div>
            <div class="row mb-3">
                <label for="finEnchere" class="col-sm-3 col-form-label">Fin de l'enchéres</label>
                <div class="col-sm-9">
                <input type="date" class="form-control" id="finEnchere" name="dateFinEncheres">
                </div>
            </div>
            <div class="border border-secondary p-3">
                <p>Retrait</p>
                <div class="row mb-3">
                    <label for="rue" class="col-sm-3 col-form-label">Rue</label>
                    <div class="col-sm-9">
                    <input type="text" class="form-control" id="rue" name="rue">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="codePostal" class="col-sm-3 col-form-label">Code Postal</label>
                    <div class="col-sm-9">
                    <input type="text" class="form-control" id="codePostal" name="codePostal">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="ville" class="col-sm-3 col-form-label">Ville</label>
                    <div class="col-sm-9">
                    <input type="text" class="form-control" id="ville" name="ville">
                    </div>
                </div>
            </div>
            <div class="form-group row mt-3">
                <div class="col-sm-4">
                <input class="btn btn-success" type="submit" name="enregistrer" value="Enregistrer">
                </div>
                <div class="col-sm-4">
                    <button type="reset" class="btn btn-danger">Annuler</button>
                </div>
            </div>

            </div>
        </div>
      </form>
    </div>

    <!--content end-->
    <!-- JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
  </body>
</html>
