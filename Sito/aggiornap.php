<html>
	<head>
		<title>Aggiorna Personale</title>
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
	<h1><a href= "Personale.html">PERSONALE</a></h1>
	</header>


<p class="form">
<?php
	if(!isset($_POST['udata'])){
	
   	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
	if (!$conn){
		echo 'Connessione al database fallita.';
		exit();
	
	} else {

			$query1="SELECT cf FROM personale";
			$result1 = pg_query($conn, $query1);
			if (!$result1) {
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
				exit();
			} else {
						print('<div class="f" align=center>');
						echo "Che cosa vuoi fare?<br>";
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");

						print("<br><select class=\"cascata\" name=\"personale\">");
						while ($row = pg_fetch_array($result1)) {
							print("<option value=\"".htmlspecialchars($row["cf"])."\">");
							echo $row["cf"];
							print("</option>");					
						};
						print("<input class=\"bottone\" id=\"udata\" type=\"submit\" name=\"udata\" value=\"Aggiorna Dipendente\"><br>");
						print("</form>");    
						print('</div>');		
			};
	};
	};
   
  if(isset($_POST['udata']) and $_POST['udata']=='Aggiorna Dipendente')
    {
        $conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
		
		} else {
			
		$query="SELECT * FROM personale WHERE cf='".$_POST['personale']."'";
		echo "Dipendente: ".$_POST['personale'];
    	$result =  pg_query($conn, $query);
		$array=pg_fetch_assoc($result);
		print('<div align="center">');
        print('<table class="t1" border="2">');
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
        print("<tr><th>Codice fiscale</th><td><input type=\"text\" name=\"cf\" value='".$array['cf']."'required></td</tr>");
		print("<tr><th>Nome</th><td><input type=\"text\" name=\"nome\" value='".$array['nome']."'required></td></tr>");
		print("<tr><th>Cognome</th><td><input type=\"text\" name=\"cognome\" value='".$array['cognome']."'required ></td></tr>");
        print("<tr><th>Telefono</th><td><input type=\"text\" name=\"tel\" value='".$array['tel']."'required></td</tr>");
        print("<tr><th>Email</th><td><input type=\"text\" name=\"email\" value='".$array['email']."'required ></td></tr>");
        print("<tr><th>Mansione</th><td><input type=\"text\" name=\"mansione\" value='".$array['mansione']."'required ></td></tr>");
        print("<tr><th>Data Nascita</th><td><input type=\"text\" name=\"datanascita\" value='".$array['datanascita']."'required></td</tr>");
		print("<tr><th>Residenza</th><td><input type=\"text\" name=\"residenza\" value='".$array['residenza']."'required></td></tr>");
		print("<tr><th>Data Assunzione</th><td><input type=\"text\" name=\"dataassunzione\" value='".$array['dataassunzione']."'required></td</tr>");
        print("<tr><th>Data Cambio Livello</th><td><input type=\"text\" name=\"datacambiolivello\" value='".$array['datacambiolivello']."'required></td</tr>");
        print("<tr><th>Livello</th><td><input type=\"text\" name=\"livellop\" value='".$array['livellop']."'required></td</tr>");
        print("<tr><th>Reparto</th><td><input type=\"text\" name=\"repartop\" value='".$array['repartop']."'required></td></tr>");
        print("<tr><th></th><td><input class=\"bottone1\" type=\"submit\" name=\"idata\" value=\"Modifica\">");
        print("</form>");
       	print("<form action=\"aggiornap.php\">");
        print("<input class=\"bottone2\" type=\"submit\" name=\"idata\" value=\"Indietro\"></td></tr>");
        print("</form>");
        print('</table>');  
        print('</div>');    
		}
    }
    else if( isset($_POST['udata']) and $_POST['udata']=='Modifica')
    {   
        $conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
	
		} else {
       
		$cfP=isset($_POST['cf'])?$_POST['cf']:'';
		$nomeP=isset($_POST['nome'])?$_POST['nome']:'';
		$cognomeP=isset($_POST['cognome'])?$_POST['cognome']:'';
		$telP=isset($_POST['tel'])?$_POST['tel']:'';
		$emailP=isset($_POST['email'])?$_POST['email']:'';
		$mansioneP=isset($_POST['mansione'])?$_POST['mansione']:'';
		$datanascitaP=isset($_POST['datanascita'])?$_POST['datanascita']:date(y.m.d);
		$residenzaP=isset($_POST['residenza'])?$_POST['residenza']:'';
		$dataassunzioneP=isset($_POST['dataassunzione'])?$_POST['dataassunzione']:date(y.m.d);
		$datacambiolivelloP=isset($_POST['datacambiolivello'])?$_POST['datacambiolivello']:date(y.m.d);
		$livello=isset($_POST['livellop'])?$_POST['livellop']:'';
		$reparto=isset($_POST['repartop'])?$_POST['repartop']:'';
 		$query1="UPDATE personale SET cf='$cfP', nome='$nomeP', cognome='$cognomeP', tel='$telP', email='$emailP', mansione='$mansioneP', datanascita='$datanascitaP', residenza='$residenzaP', dataassunzione='$dataassunzioneP', datacambiolivello='$datacambiolivelloP', livellop='$livello', repartop='$reparto' WHERE cf='$cfP';";
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