use default;

DESCRIBE employee;

insert into employee (eid,name,salary,destination) values(8,"Ahmed Reda",1500,"Training");

select * from employee where eid = 8;

---------------------------------------------------------------

select * from payments where payments.id_client = 1;

select * from payments_info where payments_info.id_client = 1;

select payments.id_client,payments_info.id_client,payments.pay_date,payments.pay_sum,payments.pay_currency,payments.pay_sum_rur	,
       payments_info.trx_cnt,payments_info.trx_sum_rur	
from payments
left join payments_info
on payments.id_client = payments_info.id_client
where payments.id_client = 1 ;