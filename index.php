<?php
if(!empty($_GET["erro"])){
 $erro = $_GET["erro"];
}
else {
    $erro = 0;
} 
 
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Login</title>
    <link rel="icon" type="image/png" href="img/favicon.png">
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>
    <script>
      var erro = <?php echo $erro;?>;
    </script>    
    <main class="login-container">
        <h1>Faça seu login </h1>
        <div class="login-content">
            <!-- Imagem ao lado -->
            <div class="login-image">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfJykTibViU5GjIZHzMKYp13-4-PIzl0C9yw&s" alt="Imagem de Tecnologia">
            </div>
            <!-- Formulário de login -->
            <form name="usuario" action="login.php" novalidate method="POST">
                <label for="email">e-mail</label>
                <input type="text" id="email" name="email" placeholder="Digite seu e-mail" value="hanielsoares29@gmail.com"> <autocomplete="off" minlength="6" maxlength="25" required value="20215">

                <label for="pass">Senha</label>
                <input type="password" id="pass" name="pass" placeholder="Digite sua senha" value="122729hs"autocomplete="off" minlength="3" maxlength="8" required>

                <button type="submit">Entrar</button>
            </form>
        </div>
   
        <div id="overlay" class="overlay">
            <div id="erroBox" class="erro-box">
                <button class="close-btn" onclick="fecharErro()">X</button>
                <span id="mensagemErro"></span>
            </div>
        </div>
    </main>
    <script src="js/sketch.js" defer></script>
</body>
</html>


