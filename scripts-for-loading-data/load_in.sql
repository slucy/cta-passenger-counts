LOAD DATA INFILE '/tmp/55.csv' INTO TABLE trips
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'

(id,
route,
direction,
vehicle,
@survey_date_var,
stop_id,
@arrival_time_var,
stop_name,
passengers_on,
passengers_off,
passengers_in,
latitute,
longitude)

SET survey_date = STR_TO_DATE(@survey_date_var, '%m/%d/%Y'),

arrival_time =  STR_TO_DATE(  SUBSTRING(@arrival_time_var,INSTR(@arrival_time_var,' ')+1) , "%r")

;
