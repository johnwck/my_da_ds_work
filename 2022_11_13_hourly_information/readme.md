# Background  
* Data analytics and data science need good quality data and features engineered (transformed) from the data.  
* There are many articles available on this topic.  
* Here, I will share on two kinds of feature engineering.  

# Business Context  
* A service personnel has to perform assigned jobs.  
* For each job, he has to record its start time and end time.  
* This data will enable hourly supply to be planned to meet demand  

# Factors To Consider  
* In each hour, the duration between start time and end time of a job should range from 0 hour to 1 hour.  
* The end time of a job can cross over to the next day.  
* The start time hour and end time hour can be the same.  

# Algorithms For The Factors  
* If the start time hour is same as hour under consideration, duration can be calculated as minimum of end time and next hour under consideration minus the start time  
* If end time of job cross over to next day, set end time of job today to 12 am and start time job next day to 12 am.  

# Final Words  
* Do refer to the Python codes on how to programme the algorithms for the factors.  
* Do let me know your thoughts and suggestions on this article  

# Search Keywords  
datetime cross-over to next day, dataframe in string, dataframe in datetime, dataframe in float, datetime overlap, insert row anywhere in dataframe  