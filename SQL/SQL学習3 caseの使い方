#caseの使い方の学習

select 費目,出金額,
case 費目 when '食費' then '固定費'
		  when '水道光熱費' then '固定費'
		  when '給料' then '固定費'
		  else '変動費'
end as 出費の分類
from 家計簿
where 出金額 >= 0