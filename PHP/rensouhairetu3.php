<?php
$menus = array(
  array('name' => 'CURRY', 'price' => 900),
  array('name' => 'PASTA', 'price' => 1200),
  array('name' => 'COFFEE', 'price' => 600)
);

// この下にコードを書いてください
$maxprice = 0;
$maxPriceMenuName = '';
$totalprice = 0;
foreach($menus as $menu){
  $name1 = $menu['name'];
  $price1 = $menu['price'];
  echo $name1.'は'.$price1.'円です';
  echo "<br>";
  $totalprice = $totalprice + $price1;
  
  if ($price1 > $maxprice){
    $maxprice = $price1;
    $maxPriceMenuName = $name1;
  }
  
}
echo '合計金額は'.$totalprice.'円です';
echo '<br>';
echo $maxPriceMenuName.'が最高価格で'.$maxprice.'円です';


#echo "<br>";
#$array = array(2,6,3,10,4);
#echo max($array);

#$x = array(200,300,250);
#$sum =array_sum($x);

#var_dump($x);

##Echo $sum;
#array_sum($menu['price']);
#echo $menus[1]['name'];
?>