#指定されたデータの取得

select gender,sum(price) as "売上額"
from items
join sales_records
on items.id =sales_records.item_id
group by gender
;
