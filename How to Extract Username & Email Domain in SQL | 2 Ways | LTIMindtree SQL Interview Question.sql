-- CREATE TABLE

CREATE OR REPLACE TABLE EMPLOYEE_EMAIL (
    EMP_ID INTEGER,
    EMAIL_ID VARCHAR(100)
);


-- INSERT SAMPLE DATA

INSERT INTO EMPLOYEE_EMAIL (EMP_ID, EMAIL_ID)
VALUES
    (101, 'john.smith@gmail.com'),
    (102, 'alice.johnson@yahoo.com'),
    (103, 'david.wilson@outlook.com'),
    (104, 'emily.davis@company.com'),
    (105, 'michael.brown@xyz.org'),
    (106, 'sarah.miller@gmail.com'),
    (107, 'robert.taylor@abc.com'),
    (108, 'jessica.anderson@yahoo.com'),
    (109, 'daniel.thomas@outlook.com'),
    (110, 'olivia.martin@company.com');

-- METHOD 1 

SELECT EMAIL_ID, 
       POSITION('@',EMAIL_ID,1) AS SYMBOL_POSITION,
       SUBSTR(EMAIL_ID,1,(SYMBOL_POSITION -1)) AS USER_NAME,
       SUBSTR(EMAIL_ID,  (SYMBOL_POSITION + 1)) AS EMAIL_DOMAIN
FROM EMPLOYEE_EMAIL;



-- METHOD 2 -- SPLIT_PART

SELECT EMAIL_ID,
       SPLIT_PART(EMAIL_ID,'@',1) AS USER_NAME,
       SPLIT_PART(EMAIL_ID,'@',2) AS EMAIL_DOMAIN
       
FROM EMPLOYEE_EMAIL;

