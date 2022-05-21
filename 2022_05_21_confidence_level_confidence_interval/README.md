**Background**  

* When studying statistics, you will encounter "confidence level" and "confidence interval".  
* You may wonder what do they mean.  
* In this post, I will explain their meaning with some demonstrations.  
<br>  
<br>  

**Demonstration 1**  

Step 1  
* Use the Uniform Distribution.  
* Set the minimum at 10.  
* Set the maximum at 20.  
* Then the true mean will be 15.  
* **Remember: You will never know the true mean.**  

Step 2  
* Randomly sample 10 numbers from this distribution.  
* Calculate the sample mean.  
* Calculate the sample standard deviation.  
* **In this step, you are using the sample mean as a point estimate of the true mean.**  

Step 3  
* Set the confidence level at 95% (for two-tailed).  
* Use the (a) confidence level, (b) t-distribution, (c) sample mean, (d) sample standard deviation, and (e) sample size to calculate the upper and lower confidence limits of the sample mean.  
* **Since you do not know the true standard deviation, you must use the t-distribution and not the standard normal distribution.**  
* The interval between the upper and lower confidence limits is the confidence interval of the sample mean.  

Step 4  
* Repeat Step 2 and Step 3 for 19 times.  
* Then, you should have 20 cases.  

Step 5  
* Plot a chart of the sample means and sample confidence intervals to visualise the 20 cases.  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_1.png)  
This chart visualises the 20 cases outlined in Step 5  
<br>  
<br>  

**Observation**  

* From the chart, you can see that 18 out of 20 (90%) confidence intervals contain the true mean.  
* In an ideal situation, 95% of the confidence intervals should contain the true mean.  
<br>  
<br>  

**Meaning of confidence level and confidence interval**  

* If you set your confidence level at 95%, then 95 out of 100 confidence intervals should contain the true mean.  
* In reality, you will not know which 95 out of the 100 confidence intervals will contain the true mean because **you do not know the true mean**.  
* In real life, the sampling is only done once most of the time.  
* Hence only 1 confidence interval is calculated.  
* In this respect, every confidence interval calculated has a 95% confidence level of containing the true mean.
<br>  
<br>  

**Demonstration 2**  

Changes made to get near to the ideal situation:  

Step 6
* Increase the sample size from 10 to 100 - This is used to calculate 1 confidence interval to determine if it contains or does not contain the true mean.  

Step 7  
* Increase cases from 20 to 1,000 - This is used to calculate 1 proportion of confidence interval that contains the true mean.  

Step 8
*  Repeat Step 6 and Step 7 for 998 instances - This is used to get a long-term trend of the 999 proportions of confidence interval that contains the true mean.  
<br>  
<br>  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_2_flow.png)  
This picture shows how Demonstration 2 was done  
<br>  
<br>  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_2.png)  
This chart visualises the 999 instances outlined in Step 8  
<br>  
<br>  

**Conclusion**  

* Indeed, in a near ideal situation, the confidence level is the proportion of confidence intervals containing the true mean.  
* Since in real life the sampling is only done once, the confidence level is the probability that the confidence interval contains the true mean.  
<br>  
<br>  

**Updated**  

21 May 2022  
