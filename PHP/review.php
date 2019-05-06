<?php
//・詳細ページにレビューを表示するための学習。
//Reviewクラス作成。プロパティ定義,コンストラクタ定義、ゲッター定義等。
// Reviewクラスを定義してください
class Review{
  private $menuName;
  private $body;
 
   public function __construct($menuName,$body){
    $this->menuName = $menuName;
    $this->body = $body;
  }
  
  public function getMenuName(){
    return $this->menuName;
  }
  
  public function getBody(){
    return $this->body;
  }
}

?>
