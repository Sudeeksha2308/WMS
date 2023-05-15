CREATE DEFINER=`Sukeerthi`@`%` PROCEDURE `get_worker`()
BEGIN
SELECT
	Id,
    Name,
    Mobile_number,
    Role,
    Skill_level,
    Availability,
    No_of_hours_workers,
    works_completed
From
	worker
Order by
	Id;

END