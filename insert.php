<?php

// 入力チェック
var_dump($_POST);

//POSTデータ取得
if (
  !isset($_POST['name']) || $_POST['name'] == '' || !isset($_POST['url']) || $_POST['url'] == ''
) {
  exit('ParamError');
}
$name = $_POST['name'];
$url = $_POST['url'];
$comment = $_POST['comment'];

//DB接続
include('functions.php');
$pdo = connectToDb();

// $dbn = 'mysql:dbname=gsacfd04_db05;charset=utf8;port=3306;host=localhost';
// $user = 'root';
// $pwd = '';

// try {
//   $pdo = new PDO($dbn, $user, $pwd);
// } catch (PDOException $e) {
//   exit('dbError:' . $e->getMessage());
// }

//データ登録SQL作成
$sql = 'INSERT INTO gs_bm_table(id,name,url,comment,indate)VALUE(NULL, :a1, :a2, :a3,sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);    //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a2', $url, PDO::PARAM_STR);   //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute();

//４．データ登録処理後
if ($status == false) {
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
} else {
  //５．index.phpへリダイレクト
  header('Location: index.php');
  exit;
}
