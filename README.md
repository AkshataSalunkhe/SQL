# ETL process

## Datasets: 
1. Real Estate Property:
   Constrains:
   1. Serial Number
   2. List Year
   3. Date Recorded
   4. Town
   5. Address
   6. Sale Amount
   7. Sale Ratio
   8. Property Tyoe
   9. Assessed Value
   10. Residencial Type
   
3. Buyers
   1. Buyer First name
   2. Buyer Last name
   3. Address
   4. Phone number
   5. Payment method

## Enity Relationship Between Real Estate Property and Buyers

![image](https://github.com/AkshataSalunkhe/SQL/assets/143021478/b1eea60c-482d-452a-874e-d487b45b1cad)

ER Diagram for Real Estate Property to Buyers. 
From ER Diagram Buyer can buy one or more Real Estate Properties but Real Estate Property can be sold to one and only one Buyer. 

*Cardinality*: 

Cardinality means maximum number of possibilities considered in the relationship. In above ERD, one or more real estate property can be sold to one buyer. In this ERD, Cardinality is Many-to-One relationship from Real Estate Property to Buyer. 

*Modality*: 

Modality means minimum number of possibilities considered in the relationship. In above ERD, one buyer can have one Real Estate Property. In this ERD, Modality is One-to-One relationship from Real Estate Property to Buyer. 



   
   
