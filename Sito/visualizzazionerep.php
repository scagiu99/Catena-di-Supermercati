<html>
	<head>
		<title>Visualizzazione Reparti</title>
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
				padding: 50px 0;
			}
			.tabella {
				background-color: silver;
				border-color: black;
				text-align: center;
			}
			.cascata {
				font-size: 80%;
				border-radius: 7px;
			}
			.bottone {
				color: black;
				border-radius: 10px;
				background-color: gainsboro;
           		font-size: 80%;
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
	
	if(!isset($_POST['vdata'])){
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
						echo "Quale reparto vuoi visualizzare e che cosa vuoi visualizzare?<br>";
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						print("<br><select class=\"cascata\" name=\"nome\">");
						while ($row = pg_fetch_array($result2)) {
							print("<option value=\"".htmlspecialchars($row["nome"])."\">");
							echo $row["nome"];
							print("</option>");					
						};
						print("<input class=\"bottone\" id=\"vdata\" type=\"submit\" name=\"vdata\" value=\"Visualizza Personale\"><br>");
						print("<br><input class=\"bottone\" id=\"vdata\" type=\"submit\" name=\"vdata\" value=\"Visualizza Mansioni\"><br>");
						print("<br><input class=\"bottone\" id=\"vdata\" type=\"submit\" name=\"vdata\" value=\"Visualizza Turni Settimanali\">");
						print("</form>");    
						print('</div>');

			};
	};
	};

    if(isset($_POST['vdata']) and !empty($_POST['vdata']) and !empty($_POST['nome']) and $_POST['vdata']=='Visualizza Personale') 
    {
		
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
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						while ($row = pg_fetch_array($result2)) {
							if($row["nome"]==$_POST['nome']){
								print("<option value=\"".htmlspecialchars($row["nome"])."\" selected=\"selected\">");
							}else{
								print("<option value=\"".htmlspecialchars($row["nome"])."\">");
							};
							
							print("</option>");					
						};
						print("<input id=\"vdata\" style=\"display:none\" type=\"submit\" name=\"vdata\" value=\"Visualizza Personale\">");
						print("</form>");    
						
						$selected=$_POST['nome'];
						echo "Hai selezionato il reparto: ".$selected. "<br>";
						$query="SELECT cf, nome, cognome, mansione, livellop FROM personale WHERE repartop='".$selected."' ;";
						$result =  pg_query($conn, $query);
						if (!$result) {
							echo "Si è verificato un errore.<br/>";
							echo pg_last_error($conn);
							exit();
						} else {
							print('<div align="center">');
							print('<table border="2" class="tabella">');
							echo '<tr>
								<th>Codice Fiscale</th>
								<th>Nome</th>
								<th>Cognome</th>
								<th>Mansione</th>
								<th>Livello</th>
								</tr>';
							while ($row = pg_fetch_array($result)) {
								echo '<tr>
								<td>'.$row['cf']. '</td>
								<td>'.$row['nome'].'</td>
								<td>'.$row['cognome']. '</td>
								<td>'.$row['mansione']. '</td>
								<td>'.$row['livellop']. '</td><tr>';       	
							};
							print('</table>');
							
							print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
							echo "<br><input type=\"submit\" name=\"back\" value=\"Indietro\" class=\"bottone\">";
							print('</div>');
							echo "</form>";
						};
			};
		}		

    };

    if(isset($_POST['vdata']) and !empty($_POST['vdata']) and !empty($_POST['nome']) and $_POST['vdata']=='Visualizza Mansioni')
    {
		
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
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						while ($row = pg_fetch_array($result2)) {
							if($row["nome"]==$_POST['nome']){
								print("<option value=\"".htmlspecialchars($row["nome"])."\" selected=\"selected\">");
							}else{
								print("<option value=\"".htmlspecialchars($row["nome"])."\">");
							};
							
							print("</option>");					
						};

    					print("<input id=\"vdata\" style=\"display:none\" type=\"submit\" name=\"v1data\" value=\"Visualizza Mansioni\">");
						print("</form>");    
						
						$selected=$_POST['nome'];
						echo "Hai selezionato il reparto: ".$selected. "<br>";
						$query="SELECT mansione, cf, nome, cognome FROM personale WHERE repartop='".$selected."' ;";
						$result =  pg_query($conn, $query);
						if (!$result) {
							echo "Si è verificato un errore.<br/>";
							echo pg_last_error($conn);
							exit();
						} else {
							print('<div align="center">');
							print('<table border="2" class="tabella">');
							echo '<tr>
								<th>Mansione</th>
								<th>Codice Fiscale</th>
								<th>Nome</th>
								<th>Cognome</th>
								</tr>';
							while ($row = pg_fetch_array($result)) {
								echo '<tr>
								<td>'.$row['mansione']. '</td>
								<td>'.$row['cf']. '</td>
								<td>'.$row['nome'].'</td>
								<td>'.$row['cognome']. '</td>
								<tr>';       	
							};
							print('</table>');
							
							print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
							echo "<br><input type=\"submit\" name=\"back\" value=\"Indietro\" class=\"bottone\">";
							print('</div>');
							echo "</form>";
						};
			};
		}		

    };
     if(isset($_POST['vdata']) and !empty($_POST['vdata']) and !empty($_POST['nome']) and $_POST['vdata']=='Visualizza Turni Settimanali')
    {
		
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
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						while ($row = pg_fetch_array($result2)) {
							if($row["nome"]==$_POST['nome']){
								print("<option value=\"".htmlspecialchars($row["nome"])."\" selected=\"selected\">");
							}else{
								print("<option value=\"".htmlspecialchars($row["nome"])."\">");
							};
							
							print("</option>");					
						};

    					print("<input id=\"vdata\" style=\"display:none\" type=\"submit\" name=\"v1data\" value=\"Visualizza Mansioni\">");
						print("</form>");    
						
						$selected=$_POST['nome'];
						echo "Hai selezionato il reparto: ".$selected. "<br>";
						$query="SELECT * FROM turnolavoro WHERE cft IN (SELECT cf FROM personale WHERE repartop='".$selected."' );";
						$result =  pg_query($conn, $query);
						if (!$result) {
							echo "Si è verificato un errore.<br/>";
							echo pg_last_error($conn);
							exit();
						} else {
							print('<div align="center">');
							print('<table border="2" class="tabella">');
							echo '<tr>
								<th>Codice Fiscale</th>
								<th>Giorno</th>
								<th>Orario</th>
								<th>Indirizzo</th>
								</tr>';
							while ($row = pg_fetch_array($result)) {
								echo '<tr>
								<td>'.$row['cft']. '</td>
								<td>'.$row['giornot']. '</td>
								<td>'.$row['orariot'].'</td>
								<td>'.$row['indirizzot']. '</td>
								<tr>';       	
							};
							print('</table>');
							
							print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
							echo "<br><input type=\"submit\" name=\"back\" value=\"Indietro\" class=\"bottone\">";
							print('</div>');
							echo "</form>";
						};
			};
		}		

    };
   
?>
	</p>
</body>
</html>