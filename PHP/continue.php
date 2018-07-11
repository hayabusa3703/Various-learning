<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>continue</title><!-- continueの使い方の学習 -->
</head>
<body>

  <?php

    // この下にfor文を書いてください
    for($i = 1; $i <=10; $i++){
      if($i % 3 == 0){
        continue;
      }
      echo $i;
      echo nl2br("\n");
    }
  ?>

</body>
</html>