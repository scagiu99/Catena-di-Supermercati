<HTML>
	<HEAD>
		<style>
			body {
				text-align: center;
				padding: 250px 0;
				font-size: 120%;
				background-image: url("sfondo.jpg");
				background-repeat: no-repeat;
				background-size: cover;
				-moz-background-size: cover;
				-webkit-background-size: cover;
			}
			.accesso {
				color: black;
				border-radius: 10px;
				background-color: gainsboro;
           		font-size: 80%;
			}
		</style>
	</HEAD>
<body>
	<?php 
	session_start();
  $username=$_POST['username'];
  $pwd=$_POST['pwd'];
	if ($pwd=='abc')
		echo "Premi il pulsante per accedere al sito <br>"."<input class= \"accesso\" type=\"button\" onclick=\"location.href='areapersonale.html'\" value=\"Continua\"/>";
	else 
		echo "Utente " . $username ." la password che hai inserito non risulta essere valida <br>" ."Se vuoi puoi ". "<a href='login.html'>riprovare</a>". " ad accedere";
	$_SESSION['username']=$username;
?>
</body>
</HTML>
