# SELECT ( CASE
#             WHEN id%2 != 0 AND id != counts THEN id+1
#             WHEN id%2 != 0 AND id = counts THEN id
#             ELSE id-1
#         END) AS id, student
# FROM seat, (select count(*) as counts from seat) 
# AS seat_counts
# ORDER BY id ASC;

SELECT ROW_NUMBER() OVER() id, student
FROM seat
ORDER BY IF(MOD(id, 2) = 0, id-1, id+1)