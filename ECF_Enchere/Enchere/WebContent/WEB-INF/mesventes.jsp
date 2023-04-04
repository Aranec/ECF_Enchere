<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/stylepage5.css">
    <title>Mes ventes</title>
</head>
<body>
    <header>
        
            <nav id="menu">
                <a id="afpa" href="./index.jsp">AFPA-Encheres</a>
                <ul>
                    <li><a href="" id="enchere">Encheres</a></li>
                    <li><a href=""> Vendre un article</a></li>
                    <li><a href="">Mon profil</a></li>
                    <li><a href="">Deconnexion</a></li>
                </ul>
            </nav>
        
            <h1>Liste des encheres :</h1>
    </header>
    <main>
        <h2>Filtres :</h2>
    <div id="containerform">
        <form action = "" method = "" id="filtre">
        <div id="containerbarre">
            <input type = "search" name = "" id="saisie"><br><br>

            <label for="categorie">Catégorie :</label>
            <select id="option" name="categorie">
                <option value="Toutes">Toutes</option>
                <option value="option2">Option 2</option>
                <option value="option3">Option 3</option>
                <option value="option4">Option 4</option>
                <option value="option5">Option 5</option>
            </select><br><br>
        </div>



            <div id="container">
                <input type="submit" value="Rechercher" id="button">
            </div>
            


            <br>
        <div id="containerradio">
            <div role="group" id="group">
                <input type="radio" id="achat" name="radio">
                <label for="Achats">Achats</label>               
                
                <div class="form-group">
                    <input type="checkbox" id="a">
                    <label for="">encheres ouvertes</label>
                </div>
                
                <div class="form-group">
                    <input type="checkbox" id="b">
                    <label for="">mes encheres ouvertes</label>
                </div>
                
                <div class="form-group">
                    <input type="checkbox" id="c">
                    <label for="">mes encheres remportées</label>
                </div>
            </div>
            
            
            <div role="group" id="groupb">
                <input type="radio" id="achat" name="radio">
                <label for="Achats">Mes ventes</label>               
                
                <div class="form-group">
                    <input type="checkbox" id="a">
                    <label for="">mes ventes en cours</label>
                </div>
                
                <div class="form-group">
                    <input type="checkbox" id="b">
                    <label for="">mes ventes non debutées</label>
                </div>
                
                <div class="form-group">
                    <input type="checkbox" id="c">
                    <label for="">ventes terminées</label>
                </div>
            </div>
        </div>
        </form>
    </div>
        
        
        
        <div class="card-container">
            <div class="card">
                <img src="" alt="Mon article 1">
                <div class="card-details">
                    <h2 class="card-title">Titre de mon article 1</h2>
                    <p class="card-price">Prix : </p>
                    <p class="card-auction-end">Fin des enchères : </p>
                    <p class="card-seller">Vendeur : </p>
                </div>
            </div>
        </div>
        


    </main>
    
</body>
</html>