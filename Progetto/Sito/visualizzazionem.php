<html>
	<head>
		<title>Visualizzazione Magazzini</title>
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
	<h1><a href= "Magazzini.html">MAGAZZINI</a></h1>
	</header>
	<p class="form">
<?php
	
	if(!isset($_POST['vdata'])){
   	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");
	if (!$conn){
		echo 'Connessione al database fallita.';
		exit();
		
	} else {
			
			$query2="SELECT indirizzo FROM supermercato";
			$result2 =  pg_query($conn, $query2);
			if (!$result2) {
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
				exit();
			} else {
						print('<div class="f" align=center>');
						echo "Quale magazzino vuoi visualizzare?<br>";
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						print("<select class=\"cascata\" name=\"indirizzo\">");
						while ($row = pg_fetch_array($result2)) {
							print("<option value=\"".htmlspecialchars($row["indirizzo"])."\">");
							echo $row["indirizzo"];
							print("</option>");					
						};
						print("<input class=\"bottone\" id=\"vdata\" type=\"submit\" name=\"vdata\" value=\"Visualizza Magazzino\">");
						print("</form>");    
						print('</div>');

			};
	};
	};

    if(isset($_POST['vdata']) and !empty($_POST['vdata']) and !empty($_POST['indirizzo'])) 
    {
		
    	$conn = pg_connect("host=localhost port=5432 dbname=supermercato user=postgres password=unimi");		
		if (!$conn){
			echo 'Connessione al database fallita.';
			exit();
			
		} else {
		
			$query2="SELECT indirizzo FROM supermercato";
			$result2 =  pg_query($conn, $query2);
			if (!$result2) {
				echo "Si è verificato un errore.<br/>";
				echo pg_last_error($conn);
				exit();
			} else {
						print("<form action=\"".htmlspecialchars($_SERVER['PHP_SELF'])."\" method=\"POST\">");
						while ($row = pg_fetch_array($result2)) {
							if($row["indirizzo"]==$_POST['indirizzo']){
								print("<option value=\"".htmlspecialchars($row["indirizzo"])."\" selected=\"selected\">");
							}else{
								print("<option value=\"".htmlspecialchars($row["indirizzo"])."\">");
							};
							
							print("</option>");					
						};
						print("<input id=\"vdata\" style=\"display:none\" type=\"submit\" name=\"vdata\" value=\"Visualizza Magazzino\">");
						print("</form>");    
						
						$selected=$_POST['indirizzo'];
						echo "Hai selezionato il Magazzino in ".$selected. "<br>";
						$query="SELECT * FROM magazzino where indirizzom='".$selected."' ;";
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
								<th>Quantità totale Magazzino</th>
								</tr>';
							while ($row = pg_fetch_array($result)) {
								echo '<tr>
								<td>'.$row['idprodm']. '</td>
								<td>'.$row['qtatotale'].'</td><tr>';       	
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