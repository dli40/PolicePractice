CREATE EXTERNAL TABLE `json`(
  `date` string COMMENT 'from deserializer', 
  `maxtempc` int COMMENT 'from deserializer', 
  `maxtempf` int COMMENT 'from deserializer', 
  `mintempc` int COMMENT 'from deserializer', 
  `mintempf` int COMMENT 'from deserializer', 
  `totalsnow_cm` double COMMENT 'from deserializer', 
  `sunhour` double COMMENT 'from deserializer', 
  `uvindex` int COMMENT 'from deserializer', 
  `sunrise` string COMMENT 'from deserializer', 
  `sunset` string COMMENT 'from deserializer', 
  `moonrise` string COMMENT 'from deserializer', 
  `moonset` string COMMENT 'from deserializer', 
  `moon_phase` string COMMENT 'from deserializer', 
  `moon_illumination` int COMMENT 'from deserializer', 
  `time` int COMMENT 'from deserializer', 
  `tempc` int COMMENT 'from deserializer', 
  `tempf` int COMMENT 'from deserializer', 
  `windspeedmiles` int COMMENT 'from deserializer', 
  `windspeedkmph` int COMMENT 'from deserializer', 
  `winddirdegree` int COMMENT 'from deserializer', 
  `winddir16point` string COMMENT 'from deserializer', 
  `weathercode` int COMMENT 'from deserializer', 
  `weathericonurl` array<struct<value:string>> COMMENT 'from deserializer', 
  `weatherdesc` array<struct<value:string>> COMMENT 'from deserializer', 
  `precipmm` double COMMENT 'from deserializer', 
  `humidity` int COMMENT 'from deserializer', 
  `visibility` int COMMENT 'from deserializer', 
  `pressure` int COMMENT 'from deserializer', 
  `cloudcover` int COMMENT 'from deserializer', 
  `heatindexc` int COMMENT 'from deserializer', 
  `heatindexf` int COMMENT 'from deserializer', 
  `dewpointc` int COMMENT 'from deserializer', 
  `dewpointf` int COMMENT 'from deserializer', 
  `windchillc` int COMMENT 'from deserializer', 
  `windchillf` int COMMENT 'from deserializer', 
  `windgustmiles` int COMMENT 'from deserializer', 
  `windgustkmph` int COMMENT 'from deserializer', 
  `feelslikec` int COMMENT 'from deserializer', 
  `feelslikef` int COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.openx.data.jsonserde.JsonSerDe' 
WITH SERDEPROPERTIES ( 
  'paths'='DewPointC,DewPointF,FeelsLikeC,FeelsLikeF,HeatIndexC,HeatIndexF,WindChillC,WindChillF,WindGustKmph,WindGustMiles,cloudcover,date,humidity,maxtempC,maxtempF,mintempC,mintempF,moon_illumination,moon_phase,moonrise,moonset,precipMM,pressure,sunHour,sunrise,sunset,tempC,tempF,time,totalSnow_cm,uvIndex,visibility,weatherCode,weatherDesc,weatherIconUrl,winddir16Point,winddirDegree,windspeedKmph,windspeedMiles') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://police-store-again/JSON/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='weatherjson', 
  'averageRecordSize'='865', 
  'classification'='json', 
  'compressionType'='none', 
  'objectCount'='1', 
  'recordCount'='761', 
  'sizeKey'='658413', 
  'typeOfData'='file')
