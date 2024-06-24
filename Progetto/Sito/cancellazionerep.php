<html>
	<head>
		<title>Cancellazione Reparto</title>
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
			
			.tabella {
				background-color: silver;
				border-color: black;
				text-align: center;
				width: 25%;
			}
			.bottone {
				color: black;
				border-radius: 10px;
				background-color: gainsboro;
           		font-size: 100%;
			}
		</style>
	</head>
<body link="black" vlink="black">
	<header>
	<h1><a href= "Reparti.html">REPARTI</a></h1>
	</header>

	<p class="form">
<?php

    if(isset($_POST['ddata']) and $_POST['ddata']=='Visualizza')
    {
    	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
		
		} else {
			
		$query="SELECT nome FROM reparto";
    	$result =  pg_query($conn, $query);
    	echo "Stai visualizzando i reparti";
		print('<div align= center>');
    	print('<table border="2" class="tabella">');
		echo '<tr>
         			<th>Nome</th>
         			</tr>';
		while($array=pg_fetch_assoc($result))
		{
		  		echo '<tr>
		  				<td>'. $array['nome']. '</td>
            			</tr>';
		}
		print('</table>');
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
		echo "<input type=\"submit\" name=\"back\" value=\"Indietro\" class=\"bottone\">";
		echo "</form>";
		print('</div>');
		}

    }
    else if(isset($_POST['ddata']) and $_POST['ddata']=='Cancella')
    {
    	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
	
		} else {
		
		$query="SELECT nome FROM reparto";
    	$result =  pg_query($conn, $query);
    	echo "Quale reparto vuoi cancellare?";
    	print('<div align= center>');
    	print('<table border="2" class="tabella">');
		echo '<tr>
         			<th>Nome</th>
         			</tr>';

		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
		while($array=pg_fetch_assoc($result))
		{
		  		echo '<tr>
		  				<td>'. $array['nome']. '</td>
                  		<td><input type="radio" name="deletev" value='.$array['nome'].' required></td></tr>';
		}
		
		print('</table>');
		print('<table>');
		echo "<tr><th><input type=\"submit\" name=\"delete\" value=\"Cancella\" class=\"bottone\"></th>";
		echo "</form>";
		print("<form action=\"cancellazionerep.php\">");
		echo "<th><button type=\"submit\" name=\"back\" class=\"bottone\">Indietro</button></th></tr>";
		echo "</form>";
		print('</table>');
		print('</div>');
		}
	}
    else if( isset($_POST['deletev']) and isset($_POST['deletev']) )
    {
    	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
			
		} else {
			
			$nomer=$_POST['deletev'];
		$query="DELETE FROM reparto WHERE nome= '$nomer';";
        $result = pg_query($query);
		if ($result){
			
			echo "Cancellazione avvenuta con successo<br>";
        }else{
			echo "Si è verificato un errore.<br/>";
			echo pg_last_error($conn);
			
		}
		
		}
	}

    else
    {
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
		print("Che cosa vuoi fare?<br>");
	    print("<br><input class=\"bottone\" type=\"submit\" name=\"ddata\" value=\"Visualizza\">");
	    print("<input class=\"bottone\" type=\"submit\" name=\"ddata\" value=\"Cancella\">");
	    print("</form>");    
    }

?>
	</p>
</body>
</html>