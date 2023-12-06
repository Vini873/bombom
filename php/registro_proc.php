<?php
include('dbdb.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == 'POST') {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $cpf = $_POST['cpf'];

    // Verificar se o cpf tem 11 dígitos
    if (strlen($cpf) !== 11) {
    $_SESSION['cadastro_erro_cpf'] = 'O cpf digitado é inválido.';
    header("Location: Registro.php");
    exit();
    }

    // Verificar se o e-mail já está cadastrado
    $verificar_email = "SELECT * FROM usuario WHERE email = ?";
    $stmt_verificar_email = $conn->prepare($verificar_email);
    $stmt_verificar_email->bind_param('s', $email);
    $stmt_verificar_email->execute();
    $result_verificar_email = $stmt_verificar_email->get_result();

    if ($result_verificar_email->num_rows > 0) {
        $_SESSION['cadastro_erro_email'] = 'Este e-mail já está cadastrado.';
        header("Location: Registro.php");
        exit();
    }

    // Verificar se o cpf já está cadastrado
    $verificar_cpf = "SELECT * FROM usuario WHERE cpf = ?";
    $stmt_verificar_cpf = $conn->prepare($verificar_cpf);
    $stmt_verificar_cpf->bind_param('s', $cpf);
    $stmt_verificar_cpf->execute();
    $result_verificar_cpf = $stmt_verificar_cpf->get_result();

    if ($result_verificar_cpf->num_rows > 0) {
        $_SESSION['cadastro_erro_cpf'] = 'Este cpf já está cadastrado.';
        header("Location: Registro.php");
        exit();
    }

    // Inserção no banco de dados
    $sql = "INSERT INTO usuario (nome, email, senha, cpf) VALUES (?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);

    // Vincular os valores das variáveis à consulta preparada
    $stmt->bind_param('ssss', $nome, $email, $senha, $cpf);

    if ($stmt->execute()) {
        // O INSERT foi bem-sucedido
        $_SESSION['cadastro_sucesso'] = 'Usuário cadastrado com sucesso!';
        header("Location: pagina_inicial.php");
        exit();
    } else {
        $_SESSION['cadastro_erro'] = 'Erro ao inserir usuário no banco de dados: ' . $stmt->error;
        header("Location: Registro.php");
        exit();
    }
}

$conn->close();
?>
