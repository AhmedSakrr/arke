SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_5m" FROM "candles_1m" GROUP BY time(5m), market, exchange;
SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_15m" FROM "candles_5m" GROUP BY time(15m), market, exchange;
SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_30m" FROM "candles_5m" GROUP BY time(30m), market, exchange;
SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_1h" FROM "candles_5m" GROUP BY time(1h), market, exchange;
SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_2h" FROM "candles_1h" GROUP BY time(2h), market, exchange;
SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_4h" FROM "candles_1h" GROUP BY time(4h), market, exchange;
SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_1d" FROM "candles_1h" GROUP BY time(1d), market, exchange;
SELECT FIRST(open) as open, MAX(high) as high, MIN(low) as low, LAST(close) as close, SUM(volume) as volume INTO "candles_1w" FROM "candles_1d" GROUP BY time(1w), market, exchange;
