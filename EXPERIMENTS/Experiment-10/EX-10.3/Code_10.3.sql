select f_name, f_cost, f_type from food
where f_id in (select f_id from ratings group by f_id having avg(f_rating) >= 4);
