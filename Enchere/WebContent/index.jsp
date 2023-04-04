<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-+gfrzC/v63YZ08RvOJ/D0aMeGDmeujE7SML8JZc0WeheM0PyLYzVj4W8vjPvx6fiJBAPgNkme+VW1J8cNnZu2Q=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/stylepage1.css">
    <title>Acceuil</title>
</head>

<body>
    <header>
        <div class="nav">
            <a href="./index.jsp">
                <p id="afpa">AFPA-Enchères</p>
            </a>
            <nav>
                <ul>
                    <li id="inscription"><a href="./ajoutUtilisateur"><b><u>S'inscrire</u></b></a></li>
                    <p>-</p>
                    <li id="connexion"><a href="./Connexion"><b><u>Se connecter</u></b></a></li>
                </ul>
            </nav>
        </div>
        <h1>Liste des enchères</h1>
    </header>
    <main>
        <h3 id="filtre">Filtres :</h3>
        <form action="" method="POST" name="">
                    <input id="recherche" type="text" placeholder="Le nom de l'article contient">
                <label id="categorie" for="categorie">Catégories :</label>
                <select id="option" name="categorie">
                    <option value="option1">Toutes</option>
                    <option value="option1">Informatique</option>
                    <option value="option2">Ameublement</option>
                    <option value="option3">Vêtement</option>
                    <option value="option4">Sport & Loisirs</option>
                </select>
            <button type="submit">Rechercher</button>
        </form>
        <div class="card-container">
            <div class="card">
                <img src="/medias/images/pochette.jpg" alt="Mon article 1">
                <div class="card-details">
                    <h2 class="card-title">Titre de mon article</h2>
                        <p class="card-price">Prix : </p>
                    <p class="card-auction-end">Fin des enchères : </p>
                    <p class="card-retrait">Retrait :</p>
                    <p class="card-seller">Vendeur : </p>
                </div>
            </div>
            <div class="card">
                <img src="/medias/images/pochette.jpg" alt="Mon article 2">
                <div class="card-details">
                    <h2 class="card-title">Titre de mon article</h2>
                    <p class="card-price">Prix : </p>
                    <p class="card-auction-end">Fin des enchères : </p>
                    <p class="card-retrait">Retrait :</p>
                    <p class="card-seller">Vendeur : </p>
                </div>
            </div>
        </div>


    </main>

    <footer>

    </footer>
    </div>
</body>

</html>