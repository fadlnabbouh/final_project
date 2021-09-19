# Final Project: Predicting Cardiovascular Disease

## Project Overview

Cardiovascular Disease (CVD) is the leading cause of death globally, making up approximately 32% of deaths in 2019. In this project, we will analyze objective, examination, and subjective data of 70,000 patients. We will use classification machine learning models to predict the presence of CVD and determine which features are most determinative of the presence of CVD. 

## Week 1
## Roles

Craig - Developed the ML mockup which can be found here: [ML Code](https://github.com/fadlnabbouh/final_project/blob/main/Initial_Cardio_Model.ipynb) and [here](https://github.com/fadlnabbouh/final_project/blob/main/Log_Regress_Cardio_Model.ipynb). For our Machine Learning portion, we will run classification models: a logistic regression model and neural network model on a large dataset to predict the presence of cardiovascular disease. The dataset looks at objective values such as height, weight, age, and gender, measured health values such as heart rate and levels of cholesterol/ glucose, and subjective measures such as the patient's activity level and whether or not they smoke/drink. All data will first be preprocessed to be used in our models. Our dataset's target value is relatively balanced, approximately 50-50, so we will not be using techniques to resolve class imbalance.  

Hisham - Developed the ERD and database mockup, which can be found here: [ERD/ Database Mockup](https://github.com/fadlnabbouh/final_project/tree/main/ERD%20%26%20Sql%20PgAdmin). We will use three tables and join them to use in our ML models. In addition, we will use a large dataset with key information about disease prevalence and visualize the data for our dashboard. In addition, Hashim wrote the preliminary data cleanup code. 

Chris - Developed the technology mockup that can be found here: [Technology Mockup](https://github.com/fadlnabbouh/final_project/blob/main/Technology%20and%20Pipeline/technology.md) and worked on developing a process pipeline for the team to use when coding on this project, which includes making use of AWS services such as the database development and sagemaker to have code exist in the cloud.

Fadl - Created the repository and maintained it throughout the week. In addition, maintained the readme file and developed an initial presentation and dashboard mockup that can be found here: [Dashboard Mockup](https://github.com/fadlnabbouh/final_project/blob/main/Dashboard%20%26%20Presentation/dashboard_mockup.txt).

All members contributed to the project idea and initial data clean up process. 

## Week 2
## Roles

Craig - X role - Craig outlined the dashboard and final presentation and started to put the pieces together. Craig has mapped out the parts of the presentation, what our main talking points will be, and how long each part will be in order for the team to be within the time constraints. The dashboard outline and powerpoint can be seen here: [Dashboard]() and [Presentation](). 

Hisham - Square - Hisham worked on finalizing the final machine learning model, achieving a 73% accuracy rate with a neural network. He also aided in developing visuals for the dashboard and began putting together a website to display our findings and allow users to predict their cardiovascular risk. 

Chris - Triangle Role - Chris developed the mock database into a fully funcitonal database in Postgres SQL and through Amazon's AWS Services. A html form using flask was coded to interact with a sagemaker endpoint in AWS.  The endpoint accepts input data and predicts cardiovascular risk based on the model that the team has developed. Finally, Chris set the team up on AWS' QuickSight in order to generate the dashboard. 

Fadl - Circle - Fadl continued the analysis and helped create the visuals for the dashboard. He also helped to finalize the machine learning models and generated other models to ensure we're using the best classification model. 

All team members contributed to developing dashboard visuals, planning of project elements, and repository organization. 

## Project Description
The project focuses on using a database of 70,000 patients with key objective, subjective, and medical examination metrics in order to predict risk of cardiovascular disease. The raw data was uploaded to the database and merged to form one large table for machine learning. This included 3 tables with subjective, objective, and medical examination data. CDC data was also uploaded with data on key disease mortality rates in the United States to provide an impact report within the dashboard. Database setup can be found in the Technology and Pipeline folder. Data was preprocessed (see Preprocessing folder) and explored in AWS' Quicksight. The exploratory analysis/ dashboard can be found in the dashboard. Data was then put through multiple machine learning models (see below), with a 73% accuracy being achieved using a Neural Network. Finally, the presentation to key stakeholders began development this week. 

## Machine Learning Algorithm

For the Machine Learning portion of this project, we pre-processed data by removing patients with missing data and removing outliers based on medical cutoffs. We then used a simple logistic regression to test the classification problem because we were predicting a binary variable (yes vs no cardiovascular disease). However, the logistic regression classifier can be enhanced by the more complex neural network. We tested the neural network many times, changing the number of epochs, hidden layers, and neurons, as well as the activation functions, generating an accuracy of 73% at its highest. The limitation to using a neural network, however, is how prone it is to overfitting. 

In addition to testing a few algorithms, we also tested bucketing and different variables, as well as feature analysis. Using a gradient boosted classifier, we found the most predictive variables and limited the all algorithms to those variables. We also tested BMI over height/weight and bucketing BMI and cholesterol variables. In summary, the BMI variable is a better predictor than using height/weight, bucketing reduced accuracy, and reducing number of features made the predictors less accurate. 

Out of curiosity, we also tested the SVM classification using multiple kernels, a simple decision tree, and gradient boosted classifiers. The neural network delivered the highest accuracy. 