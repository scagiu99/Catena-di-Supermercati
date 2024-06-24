<html>
	<head>
		<title>Visualizzazione Scontrino</title>
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
				font-size: 100%;
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
	<h1><a href= "Scontrini.html">SCONTRINI</a></h1>
	</header>
	<p class="form">
<?php
	
	if(!isset($_POST['vdata'])){
   	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
	if (!$conn){
		echo 'Connessione al database fallita.';
		exit();
		
	} else {
			
			$query2="SELECT cod FROM scontrino ORDER BY data";
			$result2 =  pg_query($conn, $query2);
			if (!$result2) {
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
				exit();
			} else {
						print('<div class="f" align=center>');
						echo "Quale scontrino vuoi visualizzare?<br>";
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						print("<select class=\"cascata\" name=\"cod\">");
						while ($row = pg_fetch_array($result2)) {
							print("<option value=\"".htmlspecialchars($row["cod"])."\">");
							echo $row["cod"];
							print("</option>");					
						};
						print("<input class=\"bottone\" id=\"vdata\" type=\"submit\" name=\"vdata\" value=\"Visualizza Dati\">");
						print("</form>");    
						print('</div>');

			};
	};
	};

    if(isset($_POST['vdata']) and !empty($_POST['vdata']) and !empty($_POST['cod'])) 
    {
		
    	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");		
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
			
		} else {
		
			$query2="SELECT cod FROM scontrino ORDER BY data";
			$result2 =  pg_query($conn, $query2);
			if (!$result2) {
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
				exit();
			} else {
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						while ($row = pg_fetch_array($result2)) {
							if($row["cod"]==$_POST['cod']){
								print("<option value=\"".htmlspecialchars($row["cod"])."\" selected=\"selected\">");
							}else{
								print("<option value=\"".htmlspecialchars($row["cod"])."\">");
							};
							
						
							print("</option>");					
						};
						print("<input id=\"vdata\" style=\"display:none\" type=\"submit\" name=\"vdata\" value=\"Visualizza Dati\">");
						print("</form>");    
						
						$selected=$_POST['cod'];
						echo "Hai selezionato lo scontrino: ".$selected. "<br>";
						$query="SELECT idpv, qtav FROM venduto WHERE codps='".$selected."' ;";
						$result =  pg_query($conn, $query);
						if (!$result) {
							echo "Si è verificato un errore.<br/>";
							echo pg_last_error($conn);
							exit();
						} else {
							print('<div align="center">');
							print('<table border="2" class="tabella">');
							echo '<tr>
								<th>Codice prodotto</th>
								<th>Quantità</th>
								</tr>';
							while ($row = pg_fetch_array($result)) {
								echo '<tr>
								<td>'.$row['idpv']. '</td>
								<td>'.$row['qtav'].'</td><tr>';       	
							};
							print('</table>');
							
							print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
							echo "<br><input type=\"submit\" name=\"back\" value=\"Indietro\" class=\"bottone\">";
							print('</div>');
							echo "</form>";
						};
			};
		};		

    };
   
?>
	</p>
</body>
</html>