/*
  課題：
    - 以下のコメントに従いコードを記述してください！
    - 課題が出来次第、保存して、このファイルを提出してください。
    dockerのlesoon5-phpコンテナを起動　→　DBeaver　実行して結果を確認
    
  ジャンルごとの本の平均評価が3点以下であるジャンルを表示するSQLを以下に書いてください。

  (取得結果イメージ)
  +---------+---------------+
  | genre   | average_score |
  +---------+---------------+
*/

SELECT 
    b.Genre, 
    AVG(r.Score) AS average_score
FROM Books b
JOIN Reviews r ON b.ID = r.BookID
GROUP BY b.Genre
HAVING AVG(r.Score) <= 3;
