--カラム削除
alter table 家計簿 drop column 日付,drop column 費目,drop column メモ,drop column
入金額,drop column 出金額
--カラム追加
alter table 家計簿 add 月 integer,add 降水量 integer,add 最高気温 integer,add 最低
気温 integer,add 湿度 INTEGER

--insert文
insert into 家計簿
        values(3,200,20,4,100),
              (4,300,22,7,70),
              (5,420,28,15,90),
              (6,500,23,4,70),
                  (7,800,30,11,80),
              (8,400,35,5,88)

--select文
select *
from 家計簿
where 月 in (3,5,7)
