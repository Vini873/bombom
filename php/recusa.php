<?php
include("dbdb.php");
            if(isset($_FILES['arquivo'])){
    $arquivo = $_FILES['arquivo'];

    echo "arquivo enviado";

    if($arquivo['error'])
        die("falha ao enviar arquivo");


    $pasta = "../upload/arquivos/";
    $nomeDoArquivo = $arquivo['name'];
    $novoNomeDoArquivo = uniqid();
    $extensao = strtolower(pathinfo($nomeDoArquivo, PATHINFO_EXTENSION));
    
    // echo "=====".$pasta.$nomeDoArquivo.$novoNomeDoArquivo.$extensao."=====";
    echo "=====".$arquivo["tmp_name"].$pasta.$novoNomeDoArquivo.".".$extensao."=====";

    $path = $pasta.$novoNomeDoArquivo.".".$extensao;
    $deu_certo = move_uploaded_file($arquivo["tmp_name"],  $path);
    if($deu_certo){
        $executado=$conn->query("INSERT INTO arquivos (nome, path, data_upload) VALUES('$nomeDoArquivo', '$path', null)") or die($conn->error);
        print_r($executado);
        echo "<p>Arquivo Enviado com Sucesso!</p>";

    }else
        echo "<p>Falha ao enviar arquivo</p>";




    // $extensao = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));/


}


?>