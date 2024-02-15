# **Identify Irregularities in Procurement (Association Rule Mining and Network Analysis)**
<br>

## <u>**Context**</u>
<br>

In procurement, external goods and services are acquired for the internal departments of the company to use to run the departments and company.
<br>
<br>

Hence, the procurement process will involve:
* Specifying
* Sourcing
* Evaluating
* Setting up of contracts to purchase
* Purchasing
<br>
<br>

The expected output of the procurement process is that the cost, quality, availability, delivery, and financial transactions of goods and services are in accordance with the contract.
<br>
<br>

However, irregularities in the procurement process do occur, be it intentional or unintentional. Due to these irregularities, the actual output will be different from the expected output. To identify them for investigation, correction, and prevention, random audit is done. But, to have a higher probability of identifying them compared to random audit, data analytics and data science methods can be used.
<br>
<br>

This piece of work will demonstrate how data analytics and data science methods can be used to identify favouritism (one of the irregularities) in the procurement process.
<br>
<br>

References:

* https://www.procuredesk.com/procurement-fraud/
* https://iacrc.org/fraud-and-corruption/the-most-common-procurement-fraud-schemes-and-their-primary-red-flags/
<br>
<br>

## <u>**Working Steps**</u>
<br>

Step 1: Establish the objective.

To identify favouritism in the procurement process for investigation.
<br>
<br>

Step 2: Understand the process.

Specify >>> Source >>> Invitation to tender >>> Evaluate >>> Select >>> Set up contract to purchase >>> Purchase goods and services
<br>
<br>

Step 3: Envision the objective.

Imagine how favouritism in the procurement process will look like:
* Case 1: Requestor keeps giving business to 1 or 2 suppliers in the system with a higher amount
* Case 2: Requestor gives business to 1 or 2 suppliers not in the system with a higher amount
<br>

Step 4: Envision the methods to achieve the objective.

* Look for high co-occurrence between suppliers
* Look for high connection between requestor and suppliers

Hence (a) Association Rule Mining and (b) Network Analysis can be the appropriate methods.
<br>
<br>

Step 5: Identify the data needed and their sources from Step 3 and Step 4.

* Names of requestor
* Names of suppliers, vendors, contractors
* Award dates
* Award amount
<br>

## <u>**Set Up**</u>
<br>

Since there is no labelled data for training or trained model for classification, synthesized data will be used.

This is how favouritism in the procurement process will look like:

<img src='irregularities_yes_1.png' height="550">
<br>
<br>

<img src='irregularities_yes_2.png' height="550">
<br>
<br>

This is how an ideal procurement process will look like:

<img src='irregularities_no.png' height="550">
<br>
<br>

The Association Rule Mining method based on the Apriori Algorithm can be obtained from the Python package "MLxtend". Network Analysis method can be obtained from the Python package "NetworkX".
<br>
<br>

Python packages:

* MLxtend >>> https://rasbt.github.io/mlxtend/api_subpackages/mlxtend.frequent_patterns/
* NetworkX >>> https://networkx.org/documentation/stable/tutorial.html
<br>


## <u>**Results**</u>
<br>

You can refer to the Jupyter Notebooks analysis_irregularities*.ipynb for the codes and analyses.
* Filenames with \*no* >>> Has no irregularities
* Filenames with \*yes* >>> Has irregularities
* Filenames with \*a* >>> Association Rule Mining on suppliers
* Filenames with \*b* >>> Network Analysis on suppliers from Association Rule Mining
* Filenames with \*c* >>> Network Analysis on requestors and suppliers
<br>
<br>

In Case 1 of Step 3, the irregularities for supplier_a and supplier_b cannot be detected through the community plot. However, the irregularities can be detected between requestor and supplier_a and supplier_b through the connection plot as thicker lines.

<img src='community_yes_1.png' height="400"> &nbsp; <img src='requestor_supplier_yes_1.png' height="500">
<br>
<br>

In Case 2 of Step 3, the irregularities for supplier_aaa and supplier_bbb can be detected through the community plot as separate community. At the same time, the irregularities can be detected between requestor and supplier_aaa and supplier_bbb through the connection plot as thicker lines.

<img src='community_yes_2.png' height="400"> &nbsp; <img src='requestor_supplier_yes_2.png' height="500">
<br>
<br>

That's it, folks! Hope you find this work useful. Feel free to connect with me in LinkedIn. Have a good day!
<br>
<br>
<br>
<br>

15 Feb 2024
<br>
<br>

John Wong &nbsp;&nbsp; [<img src='linkedin.PNG' height="40">](https://www.linkedin.com/in/wongchikeongjohn)
<br>
<br>

**[BACK TO MAIN PAGE ==>](https://github.com/johnwck/my_da_ds_work/tree/master)**
<br>
