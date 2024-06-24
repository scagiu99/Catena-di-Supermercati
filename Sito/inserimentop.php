<html>
	<head>
		<title>Inserimento Personale</title>
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
	<h1><a href= "Personale.html">PERSONALE</a></h1>
	</header>

<p class="form">
<?php
  
if(isset($_POST['idata']) and $_POST['idata']=='Inserisci nuovo dipendente')
    {
    	echo "Inserisci nuovo Dipendente: ";
    	print('<div align="center">');
        print('<table class="t1" border="2">');
		print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
        print("<tr><th>Codice fiscale</th><td><input type=\"text\" name=\"cf\" required></td</tr>");
		print("<tr><th>Nome</th><td><input type=\"text\" name=\"nome\" required></td></tr>");
		print("<tr><th>Cognome</th><td><input type=\"text\" name=\"cognome\" required ></td></tr>");
        print("<tr><th>Telefono</th><td><input type=\"text\" name=\"tel\" required></td</tr>");
        print("<tr><th>Email</th><td><input type=\"text\" name=\"email\" required ></td></tr>");
        print("<tr><th>Mansione</th><td><input type=\"text\" name=\"mansione\" required ></td></tr>");
        print("<tr><th>Data Nascita</th><td><input type=\"text\" name=\"datanascita\" required></td</tr>");
		print("<tr><th>Residenza</th><td><input type=\"text\" name=\"residenza\" required></td></tr>");
		print("<tr><th>Data Assunzione</th><td><input type=\"text\" name=\"dataassunzione\" required></td</tr>");
        print("<tr><th>Data Cambio Livello</th><td><input type=\"text\" name=\"datacambiolivello\" required></td</tr>");
        print("<tr><th>Livello</th><td><input type=\"text\" name=\"livellop\" required></td</tr>");
        print("<tr><th>Reparto</th><td><input type=\"text\" name=\"repartop\" required></td></tr>");
        print("<tr><th></th><td><input class=\"bottone1\" type=\"submit\" name=\"idata\" value=\"Inserisci\">");
        print("</form>");
       	print("<form action=\"inserimentop.php\">");
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
    	$query="INSERT INTO personale (cf, nome, cognome, tel, email, mansione, datanascita, residenza, dataassunzione, datacambiolivello, livellop, repartop) VALUES ('$cfP', '$nomeP', '$cognomeP', '$telP', '$emailP', '$mansioneP', '$datanascitaP', $residenzaP', '$dataassunzioneP', '$datacambiolivelloP', '$livello', '$reparto');";
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
	    print("<br><input class=\"bottone\" type=\"submit\" name=\"idata\" value=\"Inserisci nuovo dipendente\"><br>");
	    print("</form>");    
    }
	    
?>

	</p>
</body>
</html>