<?php
session_start();
include_once("conexao.php");

	if(!empty($_POST)){

		$nome= $_POST['name'];
		$email= $_POST['email'];
		$assunto= $_POST['subject'];
		$mensagem= $_POST['message'];
   
		$result_contactos ="INSERT INTO contacto (Nome,Email,Assuntos,Mensagem) VAlUES('$nome','$email','$assunto','$mensagem')";
		$resultado_contactos = mysqli_query($conn, $result_contactos);
		echo $result_contactos;
		
		if ($resultado_contactos != 1){
			$_SESSION['msg'] = "Ocorreu um erro durante o envio por favor tente novamente";
		 header("Location: formulario.php");		
		}
		else{
			$_SESSION['msg'] = "Mensagem enviada com sucesso!";
			header("Location: formulario.php");
		}
	}
	else{
		header("Location: formulario.html");
	}
	
	?>
