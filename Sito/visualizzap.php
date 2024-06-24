<html>
	<head>
		<title>Inserimento Reparti</title>
		<style type="text/css">
		header {
  				color: black;
  				text-align: center;
  				font-family: "Arial";
  				font-size: 130%;
			}
			body {
				text-align: center;
				background-image: url("sfondo.jpg");
				background-repeat: no-repeat;
				background-size: cover;
				-moz-background-size: cover;
				-webkit-background-size: cover;
				font-size: 130%;
			}
			div {
				padding: 25px 0;
			}
			.bottone {
				color: black;
				border-radius: 10px;
				background-color: gainsboro;
           		font-size: 100%;
			}
			.tabella {
				background-color: silver;
				border-color: black;
				text-align: center;
				width: 20%;
			}
			</style>
	</head>
<body link="black" vlink="black">
	<header>
	<h1><a href= "Personale.html">PERSONALE</a></h1>
	</header>

<p class="form">
<?php
    if(isset($_POST['udata']) and $_POST['udata']=='Visualizza Dipendenti')
    {
    	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
	
		} else {
		
		$query="SELECT * FROM personale";
    	$result =  pg_query($conn, $query);
    	echo "Stai visualizzando i Dipendenti";
    	print('<div align= center>');
		print('<table class="tabella" border="2">');
        		echo '<tr>
        			<th>CF</th>
        			<th>Nome</th>
        			<th>Cognome</th>
        			<th>Telefono</th>
        			<th>Email</th>
        			<th>Mansione</th>
        			<th>DataNascita</th>
        			<th>Residenza</th>
        			<th>Data Assunzione</th>
        			<th>Data Cambio Livello</th>
        			<th>Livello</th>
					<th>Reparto</th>
        		</tr>';

		while($array=pg_fetch_assoc($result))
		{
		  		echo '<tr>
		  			<td>'. $array['cf'].'</td>
            		<td>'. $array['nome'].'</td>
            		<td>'. $array['cognome'].'</td> 
            		<td>'. $array['tel'].'</td> 
            		<td>'. $array['email'].'</td>  	
            		<td>'. $array['mansione'].'</td>
            		<td>'. $array['datanascita'].'</td>
            		<td>'. $array['residenza'].'</td>	
            		<td>'. $array['dataassunzione'].'</td>
            		<td>'. $array['datacambiolivello'].'</td>
            		<td>'. $array['livellop'].'</td>
            		<td>'. $array['repartop'].'</td>
          		</tr>';
		}
		print('</table>');
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
		echo "<br><input type=\"submit\" name=\"back\" value=\"Indietro\" class=\"bottone\">";
		echo "</form>";
		print('</div>');

		}
	}

    else
    {
    	echo "Che cosa vuoi fare?";
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
	    print("<input class=\"bottone\" type=\"submit\" name=\"udata\" value=\"Visualizza Dipendenti\"><br>");
	    print("</form>");    
    }
	    
?>

	</p>
</body>
</html>