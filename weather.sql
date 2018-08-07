CREATE EXTERNAL TABLE `slweather_json`(
  `array` array<struct<date:string,maxtempc:string,maxtempf:string,mintempc:string,mintempf:string,totalsnow_cm:string,sunhour:string,uvindex:string,sunrise:string,sunset:string,moonrise:string,moonset:string,moon_phase:string,moon_illumination:string,time:string,tempc:string,tempf:string,windspeedmiles:string,windspeedkmph:string,winddirdegree:string,winddir16point:string,weathercode:string,weathericonurl:array<struct<value:string>>,weatherdesc:array<struct<value:string>>,precipmm:string,humidity:string,visibility:string,pressure:string,cloudcover:string,heatindexc:string,heatindexf:string,dewpointc:string,dewpointf:string,windchillc:string,windchillf:string,windgustmiles:string,windgustkmph:string,feelslikec:string,feelslikef:string>> COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.openx.data.jsonserde.JsonSerDe' 
WITH SERDEPROPERTIES ( 
  'paths'='array') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://police-store-again/JSON/SLweather.json'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='yelpBoi', 
  'averageRecordSize'='675437', 
  'classification'='json', 
  'compressionType'='none', 
  'recordCount'='1', 
  'sizeKey'='675437', 
  'typeOfData'='file')
