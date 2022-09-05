<?php
    $dsn = 'mysql:host=localhost;dbname=produits;port=3306;charset=utf8';
                                 // Changer le dbname quand on crée une nouvelle base de donnée

    try
        {
        $pdo = new PDO($dsn,'root','');
        }
    catch (PDOException $exception)
        { 
            mail('monmail@st.com', 'PDPException', $exception->getMessage());
			exit('Erreur de connexion à la base de données');
        }
?>