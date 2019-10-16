<?php
include('functions.php');
$pdo = connectToDb();

// $dbn = 'mysql:dbname=gsacfd04_db05;charset=utf8;port=3306;host=localhost';
// $user = 'root';
// $pwd = '';

// try {
//     $pdo = new PDO($dbn, $user, $pwd);
// } catch (PDOException $e) {
//     exit('dbError:' . $e->getMessage());
// }
if (@$_POST["keyword"] != "") { //キーワードの入力有無を確認
    $stmt = $pdo->query("SELECT * FROM gs_bm_table WHERE name LIKE  '%" . $_POST["keyword"] . "%')"); //SQL文を実行して、結果を$stmtに代入する。
}

?>
<html>

<head>
    <title>本の検索</title>
</head>
<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="index.php">一覧</a>
        </li>
    </ul>

    <body>
        <form action="search.php" method="post">

            キーワード:<input type="text" name="keyword" value=" <?php echo $_POST['keyword'] ?>"><br>
            <input type="submit">
        </form>
        <table>
            <tr>
                <th>本の名前</th>
            </tr>
            <!-- ここでPHPのforeachを使って結果をループさせる -->
            <?php foreach ($stmt as $row) : ?>
                <tr>
                    <td><?php echo $row[0] ?></td>
                    <td><?php echo $row[1] ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </body>

</html>