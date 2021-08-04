CREATE EXTERNAL TABLE IF NOT EXISTS default.logs (
  `time` timestamp,
  `message` string,
  `source_code` string,
  `source` string,
  `container_id` string,
  `container_name` string 
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
) LOCATION 's3://vorprog-logs/logs/'
TBLPROPERTIES ('has_encrypted_data'='false');