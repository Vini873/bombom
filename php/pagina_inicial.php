<?php
// Lógica fictícia de autenticação. Substitua por sua lógica real.
$usuarioLogado = true; // Suponha que o usuário está logado.

// Verificar se o usuário logado é um administrador.
$isAdmin = false; // Substitua por sua lógica real para verificar se o usuário é um administrador.

if ($usuarioLogado && $isAdmin) {
    $mostrarBotaoRegistrarOcorrencia = true;
} else {
    $mostrarBotaoRegistrarOcorrencia = false;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de registro</title>
    <link rel="stylesheet" href="../CSS/style.cssSA.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


</head>
<body>
    <div class="container-fluid m-0 p-0">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light d-none d-lg-block p-0">
                <div class="container" style="max-width: 2000px;">
                    <a class="navbar-brand mb-0 h1" href="#">S.A. Bombeiros</a>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="pagina_inicial.php">Página Inicial</a>
                        <li class="nav-item">
                            <a class="nav-link" href="login.php">Login</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="d-lg-none">

                <nav class="navbar navbar-light bg-light p-0">
                    <div class="container">
                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasNav">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <a class="navbar-brand" href="#">S.A. Bombeiros</a>
                    </div>
                </nav>

                <div class="offcanvas offcanvas-start" id="offcanvasNav">

                    <div class="offcanvas-header">
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                            aria-label="Fechar"></button>
                    </div>

                    <div class="offcanvas-body">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="pagina_inicial.php">Página Inicial</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.php">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <div class="paipagini">
        <button class="paginain">
        <div class="logo_medicina">
            <img src="../IMAGENS/logo_medicina.png" alt="">
        </div>
    </button>
    <button class="paginain">
        <div class="registrar_ocorrencia">
            <a href="../php/registrar_oco.php"><img src="../IMAGENS/registrar ocorrencia.PNG" alt=""></a>
        </div>
    </button>

    <div class="registrar_ocorrencia">
        <?php if ($mostrarBotaoRegistrarOcorrencia): ?>
            <a href="../php/registrar_oco.php"><img src="../IMAGENS/registrar ocorrencia.PNG" alt=""></a>
        <?php endif; ?>
    </div>

    <button class="paginain">
        <div class="historico_ocorrencia">
            <img src="../IMAGENS/historico.ocorrencia.PNG" alt="">
        </div>
    </button>
    </div>
</div>
<footer class="text-center text-lg-start">
            <div class="text-center p-3">
                &copy; 2023 Bombeiros/Projeto Noar. Todos os direitos reservados.
            </div>
        </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
</body>
</html>