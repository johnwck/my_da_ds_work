# **Data Science in Quality Improvement (Hierarchical Clustering)**
<br>

## <u>**Quality**</u>
<br>

Being a consultant and trainer in quality improvement, I will summarise the concepts of quality from first principles as follows:
* Quality is a comparison between the actual and expected performances.
* Poor quality is when the actual performance is worse than the expected.
* Quality improvement is to change the actual so that its performance is better than the expected.
<br>
<br>

## <u>**Quality Improvement**</u>
<br>

The Model for Improvement can be used as a guide for quality improvement work.

<img src='model_for_improvement.png' height='400'>
<br>
<br>

* It was developed by Associates in Process Improvement
* It is used by Institute for Healthcare Improvement as the framework
<br>
<br>

More information can be found here >>> https://www.ihi.org/resources/how-to-improve and https://www.apiweb.org/
<br>
<br>

## <u>**Data Science in Quality Improvement**</u>
<br>

The focus is on the 3rd Question: "What change can we make that will result in improvement?" and the "Plan, Do, Study, Act Cycle" (aka PDSA Cycle).
* To improve, we must make changes.
* However, changes we made may not result in improvement.
* Hence the PDSA Cycle is used to check the result of changes made.
<br>
<br>

In this exercise, I will show you how Hierarchical Clustering was used to give quick clues to "why" a new method did not reduce the duration of a task.
<br>
<br>

## <u>**Phase 1**</u>
<br>

The team developed a new method to reduce the duration of a task.
<br>
<br>

Using the PDSA Cycle, the team found that the new method did not significantly reduce the duration.

<img src='phase_01.png'>
<br>
<br>

Faced with this situation, the team has two choices:
* Choice 1: Find out "why" the new method did not work (learn from failures)
* Choice 2: Design another new method to pilot
<br>
<br>

The team decided to take Choice 1. But finding the "why" could be difficult. For example, what should the interview questions be. Who should they interview. Hence I suggested mining the data for more insights using Hierarchical Clustering.
<br>
<br>

## <u>**Phase 2**</u>
<br>

The inputs to Hierarchical Clustering were  
(a) hour of day  
(b) method  
(c) duration  
<br>
<br>

Since method is categorical, it has to be encoded into the numeric '0' and '1'.  
(a) '0' is the control method  
(b) '1' is the new method  
<br>
<br>

In most situations, the target (duration) is not being used in clustering models. However, I opted to use it because the hour of day and method will naturally be divided into 4 clusters with no other useful information.
<br>
<br>

The hour of day and duration were scaled using the standard-normal method so that they have equal contributions to the distance computation.
<br>
<br>

For the linkage method, I have used "Ward".  
For the measure of distance, I have used "Euclidean".  
More information can be found here >>> https://www.mygreatlearning.com/blog/hierarchical-clustering/
<br>
<br>

With the dendrogram produced as shown below, I have cut off at 2 clusters.

<img src='phase_02.png'>
<br>
<br>

More information can be found here >>> https://www.displayr.com/what-is-dendrogram/
<br>
<br>

## <u>**Phase 3**</u>
<br>

The clusters formed were added back to the data. The objective is to study the characteristics of both clusters in terms of their hour of day, method, and duration.
<br>
<br>

As shown in the charts below, Cluster 1 has earlier hours and shorter duration compared to Cluster 0. Both clusters have comparable count of new and control methods.

<img src='phase_03.png'>
<br>
<br>

This gave me the clue to plot duration throughout the hour of day and, at the same time, differentiating the new and control methods
<br>
<br>

## <u>**Phase 4**</u>
<br>

<img src='phase_04.png'>
<br>
<br>

From the line chart, the new method did have a significant reduction in duration in the early hours. However, in the later hours, the duration increases again.
<br>
<br>

This could mean that the new method may be done differently between the night shift and day shift staff.
<br>
<br>

This insight quickly gave the team clues on how to design the interview questions and who should they interview to find out "why" the new method did or did not work. This will reduce their time spent on learning from failures.
<br>
<br>

## <u>**Final Note**</u>
<br>

You can now refer to ***hierarchical_clustering.ipynb*** for the codes and steps to do hierarchical clustering.
<br>
<br>

That is, folks! Hope now you can see that data science methods can be applied in quality improvement work.
<br>
<br>
<br>
<br>

Hope you find this work useful. Feel free to connect with me in LinkedIn. Have a good day!
<br>
<br>

16 Nov 2023
<br>
<br>

John Wong &nbsp;&nbsp; [<img src='linkedin.png' height="40">](https://www.linkedin.com/in/wongchikeongjohn)
<br>
<br>

**[BACK TO MAIN PAGE ==>](https://github.com/johnwck/my_da_ds_work/tree/master)**
<br>
