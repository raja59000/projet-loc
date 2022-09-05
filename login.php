<?php 
    session_start();

    include("connect.php");

    if (empty($_POST["nom"]) && empty($_POST["prenom"]))
        {
            echo "<div class='verif'><h3>Veuillez saisir vos identifiants de connexion !</h3></div>";
            header("refresh:3; url= ../index.php");
            exit();
        }

        $nom = $_POST["nom"];
        $password = $_POST["prenom"];

        $requete = $pdo->query("SELECT * FROM membres");
        $data = $requete ->fetchAll();

        foreach ($data as $key=>$variable)
            {
            if ($nom == $data[$key]["nom"] && $password == $data[$key]["prenom"] && $data[$key]["auth"] == 2)
                {
                //ADMIN
                session_start();
                    $_SESSION['nom'] =  $data[$key]['nom'];
                    $_SESSION['prenom'] = $data[$key]['prenom'];
                    $_SESSION['auth'] = $data[$key]["auth"];
                header("location: page_prof_admin.php");
                }
            elseif ($nom == $data[$key]["nom"] && $password == $data[$key]["prenom"] && $data[$key]["auth"] == 1)
                {
                //PROF
                session_start();
                    $_SESSION['nom'] =  $data[$key]['nom'];
                    $_SESSION['prenom'] = $data[$key]['prenom'];
                    $_SESSION['auth'] = $data[$key]["auth"];
                header("location: page_prof.php");
                }
            elseif ($nom == $data[$key]["nom"] && $password == $data[$key]["prenom"] && $data[$key]["auth"] == 0)
                {
                //ELEVES
                session_start();
                    $_SESSION['nom'] =  $data[$key]['nom'];
                    $_SESSION['prenom'] = $data[$key]['prenom'];
                    $_SESSION['auth'] = $data[$key]["auth"];
                header("location: page_eleve.php");
                }
            else{
                echo "<div>Veuillez vérifiez vos identifiants !</div>";
                //header("refresh:3; url=../index.php");
                }
            }
?>