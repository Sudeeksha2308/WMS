CREATE DEFINER=`Sukeerthi`@`%` PROCEDURE `works_for_assignment`()
BEGIN
	select Id, No_of_workers_req, Start_date, Requirement, Priority, Status, Duration,workers_allotted,no_of_workers_alloted
    From work
    where STR_TO_DATE(Start_date, '%d/%m/%Y') <= CURDATE() + INTERVAL 4 DAY 
		AND Status='Not Started' AND STR_TO_DATE(Start_date, '%d/%m/%Y') >= CURDATE() 
	order by DATEDIFF(STR_TO_DATE(Start_date, '%d/%m/%Y') ,CURDATE() ) AND Priority;
	
END