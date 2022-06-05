## Confidence interval and sampling error  

<br>  
<br>  

**In short**  

1. When you take many sample sets from the same population, each with 10 randomly-taken numbers inside, and plot the distribution of their means in a histogram, the spread of their means will be wide.  

2. When you increase the randomly-taken numbers inside from 10 to 50, the spread of their means will be narrower.  

3. The bigger the sample size of a sample set, the smaller will be the sampling error.  

4. Sampling error refers to the error committed when the randomly-taken numbers in a sample set are not a true reflection of the population. Hence the sample value (for example, the mean) calculated will differ from the population value.  

<br>  
<br>  

**Simulation of point (1) with 1,000 sample sets**  

1. Randomly take 10 numbers in a sample set from the population with a Uniform Distribution.  

2. Calculate the sample mean.  

3. Repeat the above for 999 times.  

4. Visualise the distribution of the 1,000 sample means with a chart as shown below.  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_1.png)  

5. As shown in Chart 1 above, the spread of the distribution (sampling error) is wide.  

6. 95% of the sample means are located between 13.2 and 16.7. This is the confidence interval at 95% confidence level. Hence sampling error and confidence interval are related.  

<br>  
<br>  

**Simulation of point (2) with 1,000 sample sets**  

1. Randomly take 50 numbers in a sample set.  

2. Calculate the sample mean.  

3. Repeat the above for 999 times.  

4. Visualise the distribution of the 1,000 sample means with a chart as shown below.  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_2a.png)  

5. As shown in Chart 2 above, the sampling error is smaller.  

6. The confidence interval at 95% confidence level is between 14.3 and 15.8 (narrower).  

<br>  
<br>  

**In summary**  

1. To reduce your sampling error, increase the size of your sample set.  

2. When your sampling error is reduced, the confidence interval will be narrower, giving you a more accurate estimate of the population value calculated from your sample value.  

<br>  
<br>  

**You may want to read my earlier post on "Confidence level and confidence interval" dated 22 May 2022 together with this post.**  

Hope you enjoy this post. Please give me your valuable feedback for my improvement and progression.

My knowledge on statistics came from self-study and exploration, together with many wonderful friends who have taught and corrected me.

LinkedIn => www.linkedin.com/in/wongchikeongjohn
