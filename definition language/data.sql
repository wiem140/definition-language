CREATE TABLE Product(
 Product_id VARCHAR2(20) CONSTRAINT pk_Product PRIMARY KEY,
 Product_Name VARCHAR2(20) CONSTRAINT nn_Product NOT NULL,
 Price NUMBER CONSTRAINT check_price CHECK (price>0));

CREATE TABLE Customer(
 Customer_id VARCHAR2(20) CONSTRAINT pk_Customer PRIMARY KEY,
 Customer_Name VARCHAR2(20) CONSTRAINT nn_Customer NOT NULL,
 Customer_Tel NUMBER);

CREATE TABLE Orders(
 CONSTRAINT fk_Orders_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id) ,
 CONSTRAINT fk_Orders_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
 Quantity NUMBER ,
 Total_amount NUMBER);

ALTER TABLE Product ADD Category VARCHAR2(20) ;
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE()