<h4>Mes emprunts</h4>
<?php
echo"<tbody>";
    echo"<tr>";
        echo"<td class='image'><img src=".$resultat[$key]['photo']." ></td>";//photo
        echo"<td class='marque'>" .$resultat[$key]['marque']."</td>"; //marque
        echo"<td class='modele'>" .$resultat[$key]['modele']."</td>"; //modèle
        echo"<td class='type'>" .$resultat[$key]['type_produit']."</td>"; //Type
        echo"<td class='emprunt'>" .$resultat[$key]['date_emprunt']."</td>;";//Date emprunt;
        //echo"<td class='rendu'>" .$resultat[$key]['date_rendu']."</td>;"//Date rendu
        echo"<td class='statut'>" .$resultat[$key]['statut']."</td>;";//Statu (rendu ou non rendu)
    echo"</tr>";
echo"</tbody>"; 
?>