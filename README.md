# Amazon_Vine_Analysis
## Overview of the analysis
Following sucessful completion of the SellBy project that me and Jennifer completed, we were given analysis project. The objective of the project is to analyse the reviews written my participants in the Amazon Vine paid review program compared to reviews from non-paid reviewers. A random databset was selected from a collection of datasets based on a specific product classification. 

The ETL (Extract, Transform and Load) process was conducted on the selected dataset. The data was extracted from the site the read into Google Colab. A Amazon Web Service RDS instance was created for data storage during this project. The data was then transformed and the 'clean' data was loaded into a PostgreSQL database for further analysis. 

## Results

After an analysis of the data, it was determined that there were only two reviews that were conducted by paid Amazon Vine members. Therefore, only the unpaid reviews were considered. 

Note that there are 3,105,515 reviews in the dataset but only two of them are paid Vine reviews.

![image](https://user-images.githubusercontent.com/88912539/147859624-72841b5a-be7b-43f2-a727-16bfc1e102b6.png)


Neither of the paid Vine reviews met the threshold of over 20 reviews.

![image](https://user-images.githubusercontent.com/88912539/147859682-baab8a71-2654-4990-afd2-5189cb8f193e.png)

Considering only the non-paid reviews, there were a total of 378,638 reviews with 227,734 being Five-Start reviews. The result is that 60.14% of all the non-paid reviews received a Five-Star rating. 

![image](https://user-images.githubusercontent.com/88912539/147859777-c4730914-61ed-463a-9535-28473a361224.png)

## Summary 
Due to the lack of paid Vine member reviews, it was not possible to conduct a study to determine if there was bias between the paid and non-paid reviews. When additional paid Vine reviews are generated a study of this type would be benificial. 

In addition, I would also recommend conducting an analysis on the verified purchases to determine if there is a bias between the reviewers who purchased the book compared to those who did not. Do they rate higher/lower/same as those who did not purchase the book. 
