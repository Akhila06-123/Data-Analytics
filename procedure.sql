create database fun;
use fun;
create table player(player_id int,player_name varchar(25),country varchar(20),goal int, primary key(player_id));
insert into player values(1,'ronald','portugal',100);
insert into player values(2,'asritha','africa',90);
insert into player values(3,'thanuja','japan',110);
insert into player values(4,'anisha','USA',80);
insert into player values(5,'bhumi','australia',150);
insert into player values(6,'keerthi','London',10);
select * from player;
select player_name,country,goal from player where goal > 100;

DELIMITER &&
CREATE PROCEDURE top_player_sort_by_goal()
BEGIN
    SELECT player_name, country, goal
    FROM player
    ORDER BY goal DESC;
END &&
CALL top_player_sort_by_goal();


DELIMITER &&
CREATE PROCEDURE top_players_sort_by_goal(IN var INT)
BEGIN
    SELECT player_name, country, goal
    FROM player
    ORDER BY goal DESC
    LIMIT var;
END &&
DELIMITER ;
CALL top_players_sort_by_goal(3);


DELIMITER //
CREATE PROCEDURE player_count_country(
    IN var VARCHAR(25),
    OUT total_player INT
)
BEGIN
    SELECT COUNT(*)
    INTO total_player
    FROM player
    WHERE country = var;
END //
DELIMITER ;
CALL player_count_country('USA', @cnt);

SELECT @cnt AS Total_Players;

