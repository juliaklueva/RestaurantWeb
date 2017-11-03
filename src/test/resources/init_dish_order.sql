DROP TABLE IF EXISTS Dishes_Orders;
CREATE TABLE Dishes_Orders
(
  id       BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_id BIGINT NOT NULL,
  dish_id  BIGINT NOT NULL,
  amount   TINYINT(4)  NOT NULL,
  item_sum INT(11)     NOT NULL
);