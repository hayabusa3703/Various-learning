--！！！！！！！！！家計簿テーブルに加える操作！！！！！！！！！

--カラムを追加
alter table 家計簿 ADD 費目ID int NULL;

--カラムを削除
alter table 家計簿 DROP 費目;

--不必要な行の削除
delete from 家計簿
where 日付 in ('2013-02-14','2013-02-11');

--費目idのupdate文

update 家計簿
set 費目id = 3
where メモ = '1月の電気代';

update 家計簿
set 費目id = 2
where メモ = 'コーヒーを購入';

update 家計簿
set 費目id = 1
where メモ = '1月の給料';









--sql、テーブルを作るためのcreate文

CREATE TABLE 費目テーブル (
  ID int,
  名前 varchar(20),
  備考 varchar(100)
)

--行を追加

insert into 費目テーブル
values(1,'給料','給与や賞与が入った');

insert into 費目テーブル
values(2,'食費','食事代（ただし飲み会などの外食を除く）');

insert into 費目テーブル
values(3,'水道光熱費','水道・電気・ガス');


--join文

select 日付,名前 as 費目です,メモ
from 家計簿
join 費目テーブル
on 家計簿.費目id = 費目テーブル.id
;

