use car;
select * from cars;
select Brand,count(*) from cars group by(Brand);
select Brand,sum(Accelsec) as total from cars where Accelsec > 4 group by Brand;
select Brand,max(Accelsec),min(Accelsec),avg(Accelsec) from cars  group by(Brand);



