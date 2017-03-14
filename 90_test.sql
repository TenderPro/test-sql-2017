INSERT INTO tender_product (id,product_id,amount, start_price, bid_step) VALUES
  (1, 1,  10,  100,  2)
, (1, 2,  20,  300, 10)
, (2, 1, 100, 1000, 30)
, (2, 3, 300, 1000, 30)
;

INSERT INTO bid (id, tender_id, product_id, amount, price) VALUES
  (1, 1, 1,  7, 100)
, (2, 1, 1,  5, 102)
, (3, 1, 1,  4, 102)
, (4, 1, 1,  3, 104)
, (5, 1, 1,  2, 104)
, (1, 1, 2, 15, 300)
, (2, 1, 2, 10, 310)
, (6, 2, 1, 10, 1000)
;


SELECT bid_winner_set(1);

\pset footer off
\o 90_test.res
SELECT * FROM bid ORDER BY tender_id, product_id, price DESC, id -- внутри одной цены побеждает первое предложение
;
\o

\! diff -c 90_test.out 90_test.res && echo "** Test completed" || echo "** Errors found"
