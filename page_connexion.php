<?php include("header.php") ?>
    <div class="formulaire_conn">
    <h2 class="h2_connexion">Connexion</h2>
        <div class="boite_conn">
            <form action="login.php" method="post">
                
                <br>

                <label for="login">Nom d'utilisateur</label>
                <br>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="nom" required>

                <br>

                <label for="password">Mot de passe</label>
                <br>
                <input type="password" placeholder="Entrer le mot de passe" name="prenom" required>

                <br>

                <input type="submit" value="Connexion" id="btn_conn">
            </form>
        </div>
    </div>
