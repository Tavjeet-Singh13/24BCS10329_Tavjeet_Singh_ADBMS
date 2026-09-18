CREATE OR REPLACE PROCEDURE update_salary_proc(
    IN p_emp_id INT,
    INOUT p_salary NUMERIC(20,2),
    OUT p_status VARCHAR(20)
)
language plpgsql
AS $$
DECLARE
    current_salary NUMERIC;
BEGIN
    SELECT salary INTO current_salary
    FROM employees
    WHERE emp_id = p_emp_id;

    IF FOUND THEN
        UPDATE employees
        SET salary = salary + p_salary
        WHERE emp_id = p_emp_id;
        p_salary := current_salary + p_salary;
        p_status := 'Success';
    ELSE
        p_status := 'Employee Not Found';
        RAISE EXCEPTION 'Employee Not Found';
    END IF;
END;
$$;
