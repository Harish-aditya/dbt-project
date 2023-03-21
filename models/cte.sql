with jobs as (select * from {{ref('jobs')}}), departments as (select * from source.schema_1.src_departments),
employees as (select * from {{ref('employee')}}), 
final as (select jobs.job_title, departments.department_name,employees.* from employees 
join jobs on jobs.job_id = employees.job_id join departments on departments.department_id = employees.department_id)
select * from final