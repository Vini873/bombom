<?php
session_start();

include("dbdb.php");

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['email']) && isset($_POST['senha'])) {
    // Dados do formulário
    $email = $_POST["email"];
    $senha = $_POST["senha"];

    // Consulta para verificar se o usuário existe
    $stmt = $conn->prepare("SELECT * FROM usuario WHERE email_usuario = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $usuario_db = $result->fetch_assoc();

        // Verifica se a senha fornecida corresponde à senha armazenada
        if (password_verify($senha, $usuario_db['senha_usuario'])) {
            // Gera um token de sessão seguro
            $token = bin2hex(random_bytes(32));

            // Armazena o token na sessão
            $_SESSION['token'] = $token;

            // Armazena outras informações do usuário na sessão
            $_SESSION['id_usuario'] = $usuario_db['id_usuario'];
            $_SESSION['nome_usuario'] = $usuario_db['nome_usuario'];
            $_SESSION['loggedIn'] = true;

            // Verifica se o usuário é um administrador
            if ($usuario_db['tipo_usuario'] === 'admin') {
                $_SESSION['admin'] = true;
            }

            // Fecha a conexão com o banco de dados
            $stmt->close();
            $conn->close();

            // Redireciona para a página adm ou user
            if ($_SESSION['admin']) {
                header('Location: Registro.php');
            } else {
                header('Location: pagina_inicial.php');
            }
            exit();
        } else {
            $_SESSION['erro_autenticacao'] = "Senha incorreta.";
        }
    } else {
        $_SESSION['erro_autenticacao'] = "Usuário não encontrado.";
    }

    // Fecha a conexão com o banco de dados
    $stmt->close();
    $conn->close();

    header('Location: login.php');
    exit();
} else {
    // Formulário não enviado, redireciona para a página de login
    $_SESSION['erro_autenticacao'] = "Campos de formulário não definidos.";
    header('Location: login.php');
    exit();
}
?>
