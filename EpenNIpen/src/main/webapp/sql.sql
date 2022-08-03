select * from Product_info

select prod_seq, product from Product_info where use_1='필기' or grip='고무'

select product, img from Product_info where type_1='연필'

select * from Product_info
where TYPE_1 in '만년필'


select * from member_info


select type_1 from PRODUCT_INFO where product='펜텔 그래프1000 리미티드9 트로피컬 썸머 그라데이션'

select * from question

select * from(select * from question where id='111' order by q_seq desc) where rownum=1

select * from survey