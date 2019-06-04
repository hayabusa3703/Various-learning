#副問い合わせ文の学習１

select 日付,メモ,出金額, (select 合計 
 from 家計簿集計
 where 費目 = '食費') as 過去の合計額
from 家計簿アーカイブ
where 費目 = '食費'