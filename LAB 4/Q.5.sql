-- Select relevant columns from supplier for those supplying three or more products
SELECT SUP.*
FROM supplier AS SUP
WHERE SUP.SUPP_ID IN
(
    SELECT SP.SUPP_ID
    FROM supplier_pricing AS SP
    GROUP BY SP.SUPP_ID
    HAVING COUNT(SP.SUPP_ID) >= 3
);
