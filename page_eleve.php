<!--Fichier page_eleve php-->
    <?php include('connect.php') ?>
    <?php include ('header.php') ?>
    <?php include('menu.php')?>

        <section class="banner">
            <h2>Produits à reserver</h2>
        </section>

        <div class="bande_banner"></div>

        <div id="container">
            <section id="materiel">
                <nav>
                    <ul>
                        <li>
                            <a href=#ap_photo>Appareils photos</a>
                        </li>
                        <li>
                            <a href=#camescope>Camescopes</a>
                        </li>
                        <li>
                            <a href=#lumiere>Lumières</a>
                        </li>
                        <li>
                            <a href=#accessoire>Accessoires</a>
                        </li>
                    </ul>       
                </nav>

                <div id="inclue_prod">
                    <?php include('produits.php') ?>
                </div>
            </section>

            <!-- Section à droite  -->
            <section id="mes_reservations">
                <?php include('gestion_emprunts.php') ?>
            </section>
        </div>

    <?php include('footer.php') ?>
        
