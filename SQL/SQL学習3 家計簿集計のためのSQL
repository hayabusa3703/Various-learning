--家計簿集計のためのSQL

select 費目,sum(出金額 + 入金額) as 合計,
round(avg(出金額 + 入金額),-1) as 平均,
max(出金額 + 入金額) as 最大,
min(出金額 + 入金額) as 最小,
count(出金額 + 入金額) as 回数
from(
select *
from 家計簿
union
select *
from 家計簿アーカイブ) as 合計テーブル
where 費目 in ( '居住費','水道光熱費','食費','教養娯楽費','給料')
group by 費目
order by 2 desc