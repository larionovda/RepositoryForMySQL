use online_auction;

/*Список ставок данного пользователя*/
select * from bids where users_user_id = 1;

/*Список лотов данного пользователя*/
select * from items where user_id = 1;

/*Поиск лотов по подстроке в названии*/
select * from items where title like '%c_p%';

/*Поиск лотов по подстроке в описании*/
select * from items where description like '%ss%';

/*Средняя цена лотов каждого пользователя*/
select avg(start_price), full_name from items 
inner join users on items.user_id = users.user_id
group by full_name;

/*Максимальный размер имеющихся ставок на каждый лот*/
select title, max(bid_value) from bids
	inner join items on items.user_id = bids.users_user_id
    group by items_item_id;
    
 /*Список действующих лотов данного пользователя*/
select * from items where stop_date between cast('2019-02-20' as date) and cast('2019-08-21' as date) and user_id = 1;
 
 /*Добавить нового пользователя*/
insert into users values (null, 'Oliver Win', 'Lenina St 6', 'oliver77', 'Lvbnhbq77');
select * from users;

/*Добавить новый лот*/
insert into items (item_id, title, description, start_price, start_date, stop_date, user_id) 
	values (11, 'Robot', 'Nice friend ', 800, '2019-04-02', '2019-08-09', 2);
select * from items;

/*Удалить ставки данного пользователя*/
delete from bids where users_user_id = 2;

/*Удалить лоты данного пользователя*/
delete from items where user_id = 2;

/*Увеличить стартовые цены товаров данного пользователя вдвое*/
update items
	set start_price = start_price * 2
    where user_id = 1;


