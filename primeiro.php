   <htm>
    <head>
        <title> Meu primeiro PHP</title>
    <head>
      <body> 
   <?php

   //var_dump( $_GET);
   if (empty($_GET)) {
     echo "Não vai rolar";
     header("Location: login.html");
   }
  else if (empty($_GET["nome"]) || empty($_GET["sobrenome"]) || empty($_GET["idade"])) {
    echo "faltou uns paranauê";
  }

  

   else{$nome = $_GET["nome"];
   $sobrenome = $_GET["sobrenome"];
   $idade = $_GET["idade"];
   $ano =  date("Y") - $idade;
   
   
   
   echo "<center>Hello World. Olá $nome $sobrenome</center>";
   echo "<center>Você Nasceu Em $ano.</center>";}
   

   ?> 
      </body>
    </html>
