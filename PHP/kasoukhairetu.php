<?php
$menu = array('name' => 'CURRY', 'price' => 900);
echo '$menuの値: ';
// var_exportは変数の中身を見るための関数
var_export($menu);
echo '<br>';
echo '-----';
echo '<br>';


echo $menu['name']."は".$menu['price'].'円です';

?>