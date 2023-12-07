<?php

include("conexao.php");

var_dump($_FILES);

if(isset($_FILES['arquivo'])){
    $arquivo = $_FILES['arquivo'];

    echo "arquivo enviado";

    if($arquivo['error'])
        die("falha ao enviar arquivo");


    $pasta = "arquivos/";
    $nomeDoArquivo = $arquivo['name'];
    $novoNomeDoArquivo = uniqid();
    $extensao = strtolower(pathinfo($nomeDoArquivo, PATHINFO_EXTENSION));
    
    // echo "=====".$pasta.$nomeDoArquivo.$novoNomeDoArquivo.$extensao."=====";
    echo "=====".$arquivo["tmp_name"].$pasta.$novoNomeDoArquivo.".".$extensao."=====";

    $path = $pasta.$novoNomeDoArquivo.".".$extensao;
    $deu_certo = move_uploaded_file($arquivo["tmp_name"],  $path);
    if($deu_certo){
        $mysqli->query("INSERT INTO arquivos (nome, path, data_upload VALUES('$nomeDoArquivo', '$path')") or die($mysqli->error);
        echo "<p>Arquivo Enviado com Sucesso!</p>";

    }else
        echo "<p>Falha ao enviar arquivo</p>";




    // $extensao = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));/


}


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload de Arquivos</title>
</head>
<body>
    <form method="POST" enctype="multipart/form-data" action="">
        <p><b><label for="">Selecione o Arquivo</label></b>
        <input name="arquivo" type="file"></p>
        <button name="upload" type="submit">Enviar Aquivos</button>
    </form>
</body>
</html>