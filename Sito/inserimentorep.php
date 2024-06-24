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
			.bottone1 {
				color: black;
				border-radius: 10px;
				background-color: gainsboro;
           		font-size: 100%;
           		float: left;
			}
			.bottone2 {
				color: black;
				border-radius: 10px;
				background-color: gainsboro;
           		font-size: 100%;
           		float: right;
			}
			.tabella {
				background-color: silver;
				border-color: black;
				text-align: center;
				width: 20%;
			}
			.t1 {
				background-color: gainsboro;
				border-color: black;
				width: 28%;
			}
			</style>
	</head>
<body link="black" vlink="black">
	<header>
	<h1><a href= "Reparti.html">REPARTI</a></h1>
	</header>

<p class="form">
<?php
    if(isset($_POST['idata']) and $_POST['idata']=='Visualizza Reparti')
    {
    	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
	
		} else {
		
		$query="SELECT nome FROM reparto";
    	$result =  pg_query($conn, $query);
    	echo "Stai visualizzando i Reparti";
    	print('<div align= center>');
		print('<table class="tabella" border="2">');
        		echo '<tr>
					<th>Reparti</th>
        		</tr>';

		while($array=pg_fetch_assoc($result))
		{
		  		echo '<tr>
            		<td>'. $array['nome'].'</td>     		
          		</tr>';
		}
		print('</table>');
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
		echo "<br><input type=\"submit\" name=\"back\" value=\"Indietro\" class=\"bottone\">";
		echo "</form>";
		print('</div>');

		}
	}

	else if(isset($_POST['idata']) and $_POST['idata']=='Inserisci Reparto')
    {
    	echo "Stai inserendo un nuovo reparto";
    	print('<div align="center">');
        print('<table class="t1" border="2">');
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
        print("<tr><th>Nome Reparto</th><td><input type=\"text\" name=\"nome\" required ></td></tr>");   
        print("<tr><th></th><td><input class=\"bottone1\" type=\"submit\" name=\"idata\" value=\"Inserisci\">");
        print("</form>");
        print("<form action=\"inserimentorep.php\">");
        print("<input class=\"bottone2\" type=\"submit\" name=\"idata\" value=\"Indietro\"></td></tr>");
        print("</form>");
        print('</table>');   
        print('</div>');
   		
	}

    else if(isset($_POST['idata']) and $_POST['idata']=='Inserisci')
    {   
        $conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
		} else {

		$nomerep=isset($_POST['nome'])?$_POST['nome']:'';
    	$query="INSERT INTO reparto (nome) VALUES ('$nomerep');";
        $result = pg_query($conn,$query);
        if ($result){
			echo "Inserimento avvenuto con successo<br>";
        }else{
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
		}
		
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
	    print("</form>");    
		}
    }

    else
    {
    	echo "Che cosa vuoi fare?";
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
	    print("<input class=\"bottone\" type=\"submit\" name=\"idata\" value=\"Visualizza Reparti\"><br>");
	    print("<br><input class=\"bottone\" type=\"submit\" name=\"idata\" value=\"Inserisci Reparto\">");
	    print("</form>");    
    }
	    
?>

	</p>
</body>
</html>