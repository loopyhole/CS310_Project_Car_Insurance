use mydb;
SELECT 
    t1.*
FROM
    t3_CUSTOMER AS t1
        INNER JOIN
    t3_PREMIUM_PAYMENT AS t2 ON t1.t3_Cust_Id = t2.t3_Cust_Id
WHERE
    t2.t3_Premium_Payment_Amount > (SELECT 
            SUM(t3_Cust_Id)
        FROM
            t3_CUSTOMER);
