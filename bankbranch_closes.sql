use bank_database;
-- Branch with branch ID 1003 gets closed
DELETE FROM bankbranch WHERE branch_id=1003;
-- Assessing the change in related tables
SELECT * FROM bankbranch;
-- row deleted
SELECT * FROM emp;
-- Branch id of each closed branch employees is replaced by NULL

SELECT * FROM branchsupplier;
-- rows deleted
SELECT * FROM client;
-- Branch id of each closed branch client is replaced by NULL

SELECT * FROM workswith;
-- No change
-- New branch opens up and all the old employees resume their respective positions

INSERT INTO bankbranch values(1005, 'Rohini', 16, '2017-03-07');
SELECT * FROM bankbranch;

UPDATE emp
SET branch_id = 1005
WHERE emp_id in (19,22);
SELECT * FROM emp;

INSERT INTO branchsupplier VALUES(1005, 'tri-ball', 'Writing Utensils');
INSERT INTO branchsupplier VALUES(1005, 'Paper Producers', 'Paper');
SELECT * FROM branchsupplier;


UPDATE client
SET branch_id = 1005
WHERE client_id in (402,403);
SELECT * FROM client;




-- Updation complete-------------------------------