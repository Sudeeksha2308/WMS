CREATE DEFINER=`Sukeerthi`@`%` PROCEDURE `get_work`()
BEGIN
	Select
		Id,
        No_of_workers_req,
        Start_date,
        Requirement,
        Priority,
        Status,
        Duration,
        workers_allotted,
        no_of_workers_alloted
        
	From 
		work
	Order by
		Id;
END