## Confidence level and confidence interval  

<br>  
<br>  

**In short**  

1. When you take 100 sample sets from the same population and calculate their confidence intervals of the mean, the proportion of confidence intervals containing the true mean of the population is given by the confidence level.  

2. When you take 1 sample set from the population and calculate its confidence interval of the mean, the probability of the confidence interval containing the true mean of the population is given by the confidence level.  

3. In real life, you do not know the true mean of the population unless you can take all the samples from the population.  

4. In real life, you may only be able to take 1 sample set instead of many sample sets.  

<br>  
<br>  

**Simulation of point (1) with small sample set**  

1. Randomly take 10 numbers in a sample set from the population with a Uniform Distribution.  

2. Calculate the sample mean.  

3. Calculate the upper and lower confidence limits of the sample mean using the t-distribution at a confidence level of 95%. The 2 limits will form the confidence interval of the sample mean.  

4. Repeat the above for 19 times.  

5. Visualise the 20 sample means and their confidence intervals with a chart as shown below.  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_1.png)  
As shown in the chart above, 18 out of 20 (90%) confidence intervals contain the true mean of the population.  

<br>  
<br>  

**Simulation of point (1) with many small sample set**  

1. Randomly take 10 numbers in a sample set.  

2. Calculate the sample mean.  

3. Calculate the confidence interval at a confidence level of 95%.  

4. Repeat the above for 999 times. You will have 1,000 confidence intervals.  

5. From the 1,000 confidence intervals, calculate the proportion of confidence intervals containing the true mean.  

6. Repeat the above for 998 times. You will have 999 proportions.
Visualise the 999 proportions with a chart as shown below.  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_2a.png)  
As shown in the chart above, there is a small gap between the 999 proportions and the true proportion (confidence level).  

<br>  
<br>  

**Simulation of point (1) with many large sample set**  

1. Randomly take 100 (increase from 10) numbers in a sample set.  

2. Calculate the sample mean.  

3. Calculate the confidence interval at a confidence level of 95%.  

4. Repeat the above for 999 times. You will have 1,000 confidence intervals.  

5. From the 1,000 confidence intervals, calculate the proportion of confidence intervals containing the true mean.  

6. Repeat the above for 998 times. You will have 999 proportions.  

7. Visualise the 999 proportions with a chart as shown below.  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/2022_05_21_confidence_level_confidence_interval/demonstration_2b.png)  
As shown in the chart above, there is no gap between the 999 proportions and the true proportion (confidence level).  

<br>  
<br>  

**In summary**  

1. When you have many sample sets, the confidence level represents the proportion of their confidence intervals containing the true population parameter value.  

2. When you have 1 sample set, the confidence level represents the probability of the confidence interval containing the true population parameter value.  

3. The larger the sample set, the closer will be the actual probability of the confidence interval containing the true population parameter value to the expected probability.  

<br>  
<br>  

Hope you enjoy this post. Please give me your valuable feedback for my improvement and progression.

My knowledge on statistics came from self-study and exploration, together with many wonderful friends who have taught and corrected me.

LinkedIn => www.linkedin.com/in/wongchikeongjohn
