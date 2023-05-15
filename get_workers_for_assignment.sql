CREATE DEFINER=`Sukeerthi`@`%` PROCEDURE `get_workers_for_assignment`(
In requirement_ varchar(45))
BEGIN
	Select
    Id, Name, Mobile_number, Role, Skill_level, Availability, No_of_hours_workers, works_completed
	From worker
    where role=requirement_
    Order by Skill_level DESC;
END