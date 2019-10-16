-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 10 月 16 日 17:53
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_db05`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, '星の王子さま', 'https://www.amazon.co.jp/%E6%98%9F%E3%81%AE%E7%8E%8B%E5%AD%90%E3%81%95%E3%81%BE%E2%80%95%E3%82%AA%E3%83%AA%E3%82%B8%E3%83%8A%E3%83%AB%E7%89%88-%E3%82%B5%E3%83%B3-%E3%83%86%E3%82%B0%E3%82%B8%E3%83%A5%E3%83%9A%E3%83%AA/dp/4001156768/ref=pd_lpo_sbs_14_img_0/355-1654349-3092209?_encoding=UTF8&psc=1&refRID=6G87XK4JRB9F197WAMS8', '大人の絵本', '2019-10-07 23:59:50'),
(3, 'ボルヘス怪奇譚集', 'https://www.amazon.co.jp/%E3%83%9C%E3%83%AB%E3%83%98%E3%82%B9%E6%80%AA%E5%A5%87%E8%AD%9A%E9%9B%86-%E6%B2%B3%E5%87%BA%E6%96%87%E5%BA%AB-Jorge-Luis-Borges/dp/4309464696/ref=sr_1_1?adgrpid=52747835709&gclid=CjwKCAjwxOvsBRAjEiwAuY7L8vDUv57zoub6Mh-JE_lz8_tsv0Y1jFXUUUGnjZqyLerfd3Qa90t4ixoCXj0QAvD_BwE&hvadid=338561722060&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t1&hvqmt=e&hvrand=18355560673343787327&hvtargid=kwd-334307144361&hydadcr=16038_11170849&jp-ad-ap=0&keywords=%E3%83%9C%E3%83%AB%E3%83%98%E3%82%B9%E6%80%AA%E5%A5%87%E8%AD%9A%E9%9B%86&qid=1570460965&sr=8-1', 'アルゼンチンの作家による世界の奇譚集', '2019-10-08 00:16:39'),
(4, 'プリンキピア', 'https://ja.wikipedia.org/wiki/%E8%87%AA%E7%84%B6%E5%93%B2%E5%AD%A6%E3%81%AE%E6%95%B0%E5%AD%A6%E7%9A%84%E8%AB%B8%E5%8E%9F%E7%90%86', 'アイザック・ニュートン著\r\n万有引力・光の成分（プリズムを用いた実験）など古典力学の名著', '2019-10-16 00:04:54'),
(5, '地獄の季節', 'https://allreviews.jp/review/747', '夭逝したフランスの詩人、アルチュール・ランボオによる散文詩。\r\n小林秀雄訳', '2019-10-17 00:32:06');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
