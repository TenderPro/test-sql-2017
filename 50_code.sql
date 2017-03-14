CREATE OR REPLACE FUNCTION bid_winner_set(a_id INTEGER) RETURNS VOID LANGUAGE sql AS
$_$
-- a_id: ID тендера
-- функция рассчитывает победителей заданного тендера
-- и заполняет поля bid.is_winner и bid.win_amount

-- ...
;
$_$;
