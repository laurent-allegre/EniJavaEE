<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="fr.AAEniJavaEE.user.bo.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//FR" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="Keywords" content=" " />
    <meta name="author" content="Laurent" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"rel="stylesheet" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
    <script 
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
<title>Utilisateur Connect�</title>
</head>
<body>
<!-- ----------------------------------------------------------------------------------------------------- -->
	
	
	<%String userName =(String)session.getAttribute("userName");  %>
    
<!--      ------------------------------------------------------------------------------------------------ -->

	<header>
      <nav class="navbar navbar-light bg-light">
        <div class="container-fluid">
          <a href="connexion.html" class="navbar-brand">ENI-Ench�res</a>
          <div class="d-flex">
            <a class="p-2" href="nouveauAchat.jsp">Ench�res</a>
            <a class="p-2" href="">Vendre un article</a>
            <a class="p-2" href="">Mon profil</a>
            <a class="p-2" href="">D�connexion</a>
          </div>
        </div>
      </nav>
    </header>
     <!--content start-->
	
    <h2 class="text-center">Liste des Ench�res</h2>
    <h3 class="text-center">Bonjour <%=userName %> </h3>
    
    <div class="container">
      <div class="row">
        <div class="col-md-5">
          <div class="small fw-light">Chercher par le nom d'article :</div>
          <div class="input-group">
            <input
              class="form-control border-end-0 border rounded-pill"
              type="search"
              value=""
              id="example-search-input"
              placeholder="Le nom de l'article contient :"
            />
            <span class="input-group-append">
              <button
                class="btn btn-outline-secondary bg-white border-bottom-0 border rounded-pill ms-n5"
                type="button"
              >
                <i class="fa fa-search"></i>
              </button>
            </span>
          </div>
        </div>
      </div>
      <div class="row mt-3 m-lg-3">
        <div class="col-6">
          <div class="dropdown">
            <button
              class="btn btn-secondary dropdown-toggle"
              type="button"
              id="dropdownMenuButton2"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Cat�gories
            </button>
            <ul
              class="dropdown-menu dropdown-menu-dark"
              aria-labelledby="dropdownMenuButton2"
            >
              <li><a class="dropdown-item active" href="#">Informatique</a></li>
              <li><a class="dropdown-item" href="#">Ameublement</a></li>
              <li><a class="dropdown-item" href="#">V�tements </a></li>
              <li><a class="dropdown-item" href="#">Sport&Loisir</a></li>
            </ul>
          </div>
          <!-- Check  -->
          
          <div class="row mt-4">
            <div class="col-4">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" />
                            <label class="form-check-label" for="inlineRadio1">Achats</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                    <label class="form-check-label" for="defaultCheck1">ench�res ouvertes </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                    <label class="form-check-label" for="defaultCheck1">mes ench�res en cours </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck3">
                    <label class="form-check-label" for="defaultCheck1">mes ench�res remport�es </label>
                </div>
            </div>
              <div class="col-4">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" />
                        <label class="form-check-label" for="inlineRadio1">Mes ventes</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                    <label class="form-check-label" for="defaultCheck1">mes ventes en cours </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                    <label class="form-check-label" for="defaultCheck1">ventes non d�but�es </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck3">
                    <label class="form-check-label" for="defaultCheck1">ventes termin�es </label>
                </div>
              </div>
              <div class="col-4 text-end">
                <button type="button" class="btn btn-primary btn-lg">Rechercher</button>
              </div>
          </div>
          
        </div>
      </div>
    </div>

    <div class="container mt-5">
      <div class="row">
        <div class="col-6">
          <div class="card mb-3" style="max-width: 540px">
            <div class="row g-0">
              <div class="col-md-4">
                <img src="https://via.placeholder.com/150" class="img-fluid rounded-start" alt="..." />
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a wider card with supporting text below as a natural
                    lead-in to additional content. This content is a little bit
                    longer.
                  </p>
                  <p class="card-text">
                    <small class="text-muted">Last updated 3 mins ago</small>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-6">
          <div class="card mb-3" style="max-width: 540px">
            <div class="row g-0">
              <div class="col-md-4">
                <img src="https://via.placeholder.com/150" class="img-fluid rounded-start" alt="..." />
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a wider card with supporting text below as a natural
                    lead-in to additional content. This content is a little bit
                    longer.
                  </p>
                  <p class="card-text">
                    <small class="text-muted">Last updated 3 mins ago</small>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--content end-->

	
	
<!-- JavaScript -->
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
      integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
      integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG"
      crossorigin="anonymous"
    ></script>
</body>
</html>