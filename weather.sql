CREATE EXTERNAL TABLE `weathersmall_json`(
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
  `moonrise` string COMMENT 'from deserializer')
  `moonset` string COMMENT 'from deserializer', 
  `moon_phase` string COMMENT 'from deserializer', 
  `moon_illumination` string COMMENT 'from deserializer', 
  `time` string COMMENT 'from deserializer', 
  `tempc` int COMMENT 'from deserializer', 
  `tempf` int COMMENT 'from deserializer', 
  `windspeedmiles` int COMMENT 'from deserializer', 
  `windspeedkmph` int COMMENT 'from deserializer')
  `winddirdeg` int COMMENT 'from deserializer', 
  `winddir16point` string COMMENT 'from deserializer')
  `weathercode` int COMMENT 'from deserializer', 
  `precip_mm` double COMMENT 'from deserializer', 
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
  `feelslikec` int COMMENT 'from deserializer')
  `feelslikef` int COMMENT 'from deserializer')
  )

ROW FORMAT SERDE 
  'org.openx.data.jsonserde.JsonSerDe' 
WITH SERDEPROPERTIES ( 
 'paths'='date,maxtempc,maxtempf,mintempc,mintempf,totalsnow_cm,sunhour,uvindex,sunrise,sunset,moonrise,moonset,moon_phase,moon_illumination,time,tempc,tempf,windspeedmiles,windspeedkmph,windirdeg,winddir16point,weathercode,precipmm,humidity,visibility,pressure,cloudcover,heatindexc,heatindexf,dewpointc,dewpointf,windchillc,windchillf,windgustmiles,windgustkmph,feelslikec,feelslikef') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://police-store-again/JSON/weatherSmall.json'
