# Objective  
To show how to format columns of a dataframe to the correct datatype.  

# Reason  
Analysis can only be done correctly on columns with the correct datatype. Moreover, in order to load data extracted from the database to the data warehouse during the ETL process, columns of a dataframe must have the same datatype as the columns of the table in the data warehouse.  

# From Step 3  
Columns of a dataframe can have unexpected datatype due to wrong data type, missing data, or data with space only in the cells.  

# From Step 4 and Step 5  
Pandas has functions to forcefully correct the datatype of a column to datetime or numeric. However, be aware of the end result after the force correction, for example:  
* Incorrect or missing date in a cell will be changed to NaT  
* Incorrect float or integer number in a cell will be changed to NaN  
* Integer number in a cell will be changed to float number  

# From Step 6  
Column of float datatype cannot be changed to integer if there are cells with NaN.  

# From Step 7 and Step 8  
Hence cells with NaN must be changed to 0 before column of float datatype can be changed to integer.  

# From Step 9  
It might be useful to convert cells with NaN or space only to "no_value" (or others) in column of string datatype. In this way, it can be filtered off or highlighted in the analysis.  

# End result  
Before loading the data into the data warehouse, it is worthwhile to check again that the datatype of the columns are correct.  

# Hope you find this short post and its code easy to understand and useful.  

# Share your thoughts with me too for my learning and improvement.  

# Contact  
Author: John Wong  
LinkedIn: www.linkedin.com/in/wongchikeongjohn  