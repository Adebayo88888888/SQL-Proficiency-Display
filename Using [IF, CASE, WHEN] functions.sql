# Using if function
drop table stock_table;
drop schema stocks;
create schema stocks;
use stocks;
create table stock_table(Trade_date year not null ,
Spy float,
Gld float,
Amzn float,
Goog float,
Kpti float ,
Gild float,
Mpc float,
weekday int);

insert into stock_table values (2010, 0.002746758, 0.00477578, 0.0986804958, 0.10372489, -0.02454788, 0.058993573, -0.0064534569, 0),
(2011, -0.095847794, 0.8690585757, -0.4448596855, 0.946475859, 0.7455378940, -0.845343849, 0.6536374949, 2),
(2012, -0.6748499477, 0.00764544648, 0.86468938937, -0.0085754546, 0.075756566768, 0.08565657353, 0.046464757, 1),
(2013, 0.0555868473, -0.9707078686, 0.886446489400, 0.0657289239, 0.044969965, 0.0343673829, -0.036485695, 4);

select * from stock_table;

select Spy , if(Spy>=0, 1, -1)* spy as Rets
from stock_table;

select avg(spy), if(spy >=0, 'UP', 'Down') as direction
from stock_table
group by direction;

# Using case when then
Select 
Case 
	when weekday(trade_date) =0 then 'Monday'
    when weekday(trade_date) =1 then 'Tuesday'
    when weekday(trade_date) =2 then 'Wednesday'
    when weekday(trade_date) =3 then 'Thursday'
    when weekday(trade_date) =4 then 'Friday'
    when weekday(trade_date) =5 then 'Saturday'
    end as weekday, spy, gld, mpc, goog, gild, amzn
    from stock_table
group by weekday
order by weekday(trade_date);
select * from stock_table






