
INSERT INTO silver_bash (id, bash_command, date_integration)
select b.id, 
b.bash_command, 
b.date_integration 
from bronze_bash b
left join silver_bash s on b.id = s.id
where s.id is null;