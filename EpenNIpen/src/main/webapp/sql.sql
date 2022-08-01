select * from Product_info

select prod_seq, product from Product_info where use_1='필기' or grip='고무'

select product, img from Product_info where type_1='연필'

select * from Product_info
where TYPE_1 in '만년필'