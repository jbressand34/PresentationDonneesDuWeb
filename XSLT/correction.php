<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<?php
		$total = 0;
		foreach ($_POST as $nom => $liste){
			echo "<b>Question $nom</b><br/>";
			echo "Reponses : $liste<br/>";
			foreach ($liste as $valeur){
				echo "Reponse : $valeur</br>";
				echo "Points : $valeur[0], n°: $valeur[1]<br/>";
				$total+=$valeur[0];
			}
			echo "<br/><br/>"
		}
		echo "<h3>Total : $total</h3><br/><br/>"
	?>
	
</body>
</html>
