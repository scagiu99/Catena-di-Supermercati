<html>
	<head>
		<title>Aggiorna Reparti</title>
		<style type="text/css">
				header {
  				color: black;
  				text-align: center;
  				font-family: "Arial";
  				font-size: 110%;
			}
			body {
				text-align: center;
				background-image: url("sfondo.jpg");
				background-repeat: no-repeat;
				background-size: cover;
				-moz-background-size: cover;
				-webkit-background-size: cover;
				font-size: 140%;
			}
			
			div {
				padding: 25px 0;
			}
			.tabella {
				background-color: silver;
				border-color: black;
				width: 100%;
				text-align: center;
			}
			.t1 {
				background-color: gainsboro;
				border-color: black;
				width: 28%;
			}
			.t2 {
				background-color: gainsboro;
				border-color: black;
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
			.bottone {
				color: black;
				border-radius: 10px;
				background-color: gainsboro;
           		font-size: 80%;
			}
			.cascata {
				font-size: 80%;
				border-radius: 7px;
			}
			.f {
				padding: 70px 0;
			}
		</style>
	</head>
<body link="black" vlink="black">
	<header>
	<h1><a href= "Reparti.html">REPARTI</a></h1>
	</header>


<p class="form">
<?php
	if(!isset($_POST['udata'])){
	
   	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
	if (!$conn){
		echo 'Connessione al database fallita.';
		exit();
	
	} else {
		
			$query2="SELECT nome FROM reparto";
			$result2 =  pg_query($conn, $query2);
			if (!$result2) {
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
				exit();
			} else {
						print('<div class="f" align=center>');
						echo "Che cosa vuoi fare?<br>";
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");

						print("<br><select class=\"cascata\" name=\"reparto\">");
						while ($row = pg_fetch_array($result2)) {
							print("<option value=\"".htmlspecialchars($row["nome"])."\">");
							echo $row["nome"];
							print("</option>");					
						};
						print("<input class=\"bottone\" id=\"udata\" type=\"submit\" name=\"udata\" value=\"Aggiorna Reparto\"><br>");
						print("</form>");    
						print('</div>');		
			};
	};
	};
   
    if(isset($_POST['udata']) and $_POST['udata']=='Aggiorna Reparto')
    {
        $conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
		
		} else {
			
		$query="SELECT nome FROM reparto WHERE nome='".$_POST['reparto']."'";
		echo "Reparto: ".$_POST['reparto'];
    	$result =  pg_query($conn, $query);
		$array=pg_fetch_assoc($result);
		print('<div align="center">');
		print('<table class="t2" border="2">');
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
        print("<tr><th>Nome</th><td><input type=\"text\" name=\"nome\" value='".$array['nome']."' required></td></tr>");
        print("<tr><th></th><td><input class=\"bottone1\" type=\"submit\" name=\"udata\" value=\"Invia\">");
        print("</form>");
        print("<form action=\"aggiornarep.php\">");
        print("<input class=\"bottone2\" type=\"submit\" name=\"udata\" value=\"Indietro\"></td></tr>");
        print("</form>");
        print('</table>');
        print('</div>');       
		}
    }
    else if( isset($_POST['udata']) and $_POST['udata']=='Invia')
    {   
        $conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
	
		} else {

		
        $nomeR=isset($_POST['nome'])?$_POST['nome']:'';
 		$query1="UPDATE reparto SET nome='$nomeR';";
        $result = pg_query($conn,$query1);
        if ($result){
            
			echo "Aggiornamento avvenuto con successo<br>";
        }else{
        
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
			
		}
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
	    print("</form>");    
		}
    }
	    
?>

	</p>
</body>
</html>