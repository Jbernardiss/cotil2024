<?php
  echo "Meu primeiro código PHP! <b>Hello World!</b>";
  echo "<br><br>";

  // ---------- vars ------------

  $nome = "COTIL";
  echo $nome;
  echo "<br><br>";

  var_dump($nome);
  echo "<br><br>";

  $outroNome = "UNICAMP";

  echo $nome . " " . $outroNome;
  echo "<br><br>";

  echo "<hr>";

  $nota1 = 8.0;
  $nota2 = 5.0;

  if(isset($nota1) && isset($nota2)) {
    $media = ($nota1 + $nota2)/2;
    echo "Média = " . $media;
  } else {
    echo "Informe as duas notas!";
  }

  define("PI", 3.14);

  $media = 4.5 * PI;
  echo "Média = " . $media;
?>