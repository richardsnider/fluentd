CREATE EXTERNAL TABLE IF NOT EXISTS default.logs (
  `container_id` string,
  `time` timestamp,
  `container_name` string,
  `source_code` string,
  `message` string,
  `source` string
) ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
WITH SERDEPROPERTIES ('serialization.format' = '1')
LOCATION 's3://vorprog-logs/logs/' TBLPROPERTIES ('has_encrypted_data' = 'false')
