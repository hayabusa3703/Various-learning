<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>連想配列！</title>
 <!--  <link rel="stylesheet" type="text/css" href="stylesheet.css"> -->
</head>
<body>

  <?php

    $scores = array(
      "国語" => 70,
      '算数' => 30,
      '理科' => 80
      );
    $scores["国語"] +=  5;
    echo $scores["国語"];
  ?>

</body>
</html>