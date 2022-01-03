**Objective**  

Develop interpretable machine learning model to predict and influence mortality of patients with heart failure warded in intensive care unit  
<br>  
<br>  

**Interpretable**  

1) “Interpretability is the degree to which a human can understand the cause of a decision.”  
2) “Interpretability is the degree to which a human can consistently predict the model’s result”  
Source: "Interpretable Machine Learning" by Christoph Molnar  
<br>  
<br>  

**Data**  

Source: Kaggle  
https://www.kaggle.com/saurabhshahane/in-hospital-mortality-prediction  
<br>  
<br>  

**Paper**  

Source: "Prediction model of in-hospital mortality in intensive care unit patients with heart failure: machine learning-based, retrospective analysis of the MIMIC-III database"  
https://bmjopen.bmj.com/content/11/7/e044779  
Authors: Fuhai Li, Hui Xin, Jidong Zhang, Mingqiang Fu, Jingmin Zhou, Zhexun Lian  
Accepted: 3 Jun 2021  
<br>  
<br>  

**Code 1**  

1) 51 columns x 1,177 rows  
2) No duplicate  
3) 8 features > Missing values from 12.2% to 25.0% > To drop  
4) 11 features > Missing values from 0.1% to 3.1% > To impute  
5) Target > 1 missing value > To delete  
6) 11 features are categorical and encoded in numeric  
7) Target is categorical and encoded in numeric  
8) 38 features are continuous  
<br>  
<br>  

**Code 2**  

1) Delete missing value from outcome  
2) Train test split  
3) Imbalanced dataset at Die(1) : Live(0) > 13.5% : 86.5%  
<br>  
<br>  

**Code 3**  

1) Explore multicollinearity  
* Pearson for continuous  
* Chi-Square for categorical  

2) Explore missing value imputation feasibility using KNNImputer  
<br>  
<br>  

**Model**  

1) Requirement 1 > Smallest overfit, high recall, reasonable precision  
2) Requirement 2 > Few important features to facilitate interventions to change mortality status  
3) Workflow 1 > Pipeline and GridSearchCV where appropriate  
4) Workflow 2 > Fit and predict on full train set, predict on full test set  
5) Parameters tuning > Oversample, decision boundary  
6) Hyperparameters tuning > Based on what's available in machine learning model  
<br>  
<br>  

**Code 4: Logistic Regression with regularisation using statsmodels.api**  

1) Best oversample = 0.85  
2) Best decision boundary = 0.35  
3) Best regularisation strength alpha = 50  
4) Test recall = 0.800 (overfit = -12.7%)  
5) Test precision = 0.212 (overfit = -6.09%)  
6) Test area under precision recall curve = 0.435  
7) Statistically significant features for interpretability  
* renal_failure  
* bicarbonate  
* blood_calcium  
* urine_output  
* deficiencyanemias  
* sp_o2  
* heart_rate  
* leucocyte  
* atrialfibrillation  
* urea_nitrogen  

8) Coefficient table from statsmodels.api  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/ga_dsif2_capstone_project/coefficient_table_logistic_regression.png)  

<br>  
<br>  

**Code 5: K Nearest Neighbours**  

1) Best oversample = 1.00  
2) Best nearest neighbours = 1,000  
3) Weights = Uniform  
4) Algorithm = Brute  
5) p = 2  
6) Test recall = 0.950 (overfit = 1.85%)  
7) Test precision = 0.173 (overfit = 1.15%)  
8) Test area under precision recall curve = 0.343  
9) Top 10 important features for interpretability based on Shapley values in SHAP  
* bicarbonate  
* systolic_blood_pressure  
* blood_calcium  
* urine_output  
* heart_rate  
* renal_failure  
* diastolic_blood_pressure  
* anion_gap  
* atrialfibrillation  
* platelets  

10) Shapley values from SHAP  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/ga_dsif2_capstone_project/shapley_k_nearest_neighbours.png)  

<br>  
<br>  

**Code 6: Neural Network**  

1) Best layer 1 = 5  
2) Best layer 2 = 3  
3) Best dropout rate = 0.4  
4) Best regularisation strength alpha = 0.1  
5) Best decision boundary = 0.4  
6) Oversample = 1.00  
7) Test recall = 0.825 (overfit = -10.8%)  
8) Test precision = 0.237 (overfit = -10.0%)  
9) Test area under precision recall curve = 0.412  
10) Top 10 important features for interpretability based on Shapley values in SHAP  
* deficiencyanemias  
* respiratory_rate  
* atrialfibrillation  
* heart_rate  
* hyperlipemia  
* diastolic_blood_pressure  
* renal_failure  
* glucose  
* blood_calcium  
* gendera  

11) Shapley values from SHAP  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/ga_dsif2_capstone_project/shapley_neural_network.png)  

<br>  
<br>  


**Conclusion**  

1) The important features common in 3 models were  
* renal_failure  
* blood_calcium  
* deficiencyanemias  
* heart_rate  

<br>  
<br>  


**Deployment workflow**  

Model can potentially be deployed in operations as follows  

![alt text](https://github.com/johnwck/my_da_ds_work/blob/master/ga_dsif2_capstone_project/deployment_workflow.png)  

<br>  
<br>  


**Updated**  

3 Jan 2022  
