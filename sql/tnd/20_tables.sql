-- ----------------------------------------------------------------------------
-- tender_product - товары тендеров
CREATE TABLE tender_product (
  id          INTEGER          -- ID тендера
, product_id  INTEGER          -- ID позиции
, amount      NUMERIC NOT NULL -- количество
, start_price NUMERIC NOT NULL -- начальная цена
, bid_step    NUMERIC NOT NULL -- шаг цены
, CONSTRAINT  tender_product_pkey PRIMARY KEY (id, product_id)
);

-- ----------------------------------------------------------------------------
-- bid - ставки участников тендера
CREATE TABLE bid (
  id         INTEGER                     -- ID ставки
, tender_id  INTEGER                     -- ID тендера
, product_id INTEGER                     -- ID позиции
, amount     NUMERIC NOT NULL            -- количество
, price      NUMERIC NOT NULL            -- цена
, is_winner  BOOL NOT NULL DEFAULT FALSE -- ставка победила
, win_amount NUMERIC                     -- объем победы, если отличается от объема ставки
, CONSTRAINT bid_pkey PRIMARY KEY (id, product_id)
, CONSTRAINT bif_fkey_tender_product FOREIGN KEY (tender_id, product_id) REFERENCES tender_product
);

