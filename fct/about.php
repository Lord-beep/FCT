<?php
include("conexao.php"); 

$consulta = "SELECT titulo, desc1, desc2, Url, subtit FROM conteudo WHERE promovid=1;";

$result = mysqli_query($conn, $consulta) or die (mysqli_error($conn));

	if(mysqli_num_rows($result) == 1){
		$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
		$titulo = $row["titulo"];
		$desc1 = $row["desc1"];
		$desc2 = $row["desc2"];
		$url = $row["Url"];
		$subtit = $row["subtit"];
	} else{
		header("location: error.php");
		exit();
	}
?>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>About</title>
		<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="aboutstyle.css">
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	</head>
	<body>
		<div class="open">
			<div class="layer"></div>
			<div class="layer"></div>
		</div>
		<section>
			<div class="header">
				<h2 class="logo"><img src="logoeuro.png"> </h2>
				<ul>
					<li>
						<a href="pixel.php" >PixelGame</a>
					</li>
					<li>
						<a href="euro.php" class="active">Eurofio</a>
					</li>
					<li>
						<a href="produtos1.php">Grupo Eurofio</a>
					</li>
					<li>
						<a href="contacto.html">Contacto</a>
					</li>
				</ul>
			</div>
		<main>
		

			<div class="bannerText">
				 
				<h2 id="tit1"><?php echo $titulo ; ?></h2><br>
				<h3 id="subtit1"><?php echo $subtit; ?></h3>
				<p><?php echo $desc1 ; ?></p>

				<a href="produtos1.php">Conheça-nos melhor</a>
			
			</div>

			
				<div class="euro" >	
			     
					   <iframe class="euro" width="560" height="315" src="<?php echo $row['Url']; ?> " frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 
					   	<br>
				
			     </div>
			<div class="element1"></div>
			<div class="element2"></div>
		</section>
		</main>	
	</body>
</html>
