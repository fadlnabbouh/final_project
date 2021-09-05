
# Import depndencies 
import pandas as pd 
import numpy as np 

if __name__ == "__main__":
    
    base_dir = "/opt/ml/processing"

    # Loading the files 
    file_path = f"{base_dir}/input/cardio_train.csv"

    # Read the data file and store it in a Pandas DataFrame.
    cardio_df = pd.read_csv(file_path, delimiter=";")
    cardio_df.head()

    # Formatting the year as the whole number
    cardio_df['New_age'] = cardio_df['age'].map("{:.0f}".format)

    # Format the age /365
    cardio_df['New_age'] = cardio_df['age'] / 365

    # Make the whole number
    cardio_df['New_age'] = cardio_df['New_age'].map("{:.0f}".format)

    # replace 'age' column.
    cardio_df.drop('age', axis=1, inplace=True)

    # Rearrange the columns
    cardio_df = cardio_df[['id', 'New_age', 'gender', 'height', 'weight', 'ap_hi', 'ap_lo', 
                                        'cholesterol', 'gluc', 'smoke', 'alco', 'active', 'cardio']] 

    # Rename the new 'age' column 
    cardio_df = cardio_df.rename(columns = {"New_age":"Age"}) 
    cardio_df.head()

    # Check data types
    cardio_df.dtypes

    # ap hi maximum heart rate is around 220 beats per minute and the minumum is 100
    #  Increasingly, experts pin an ideal resting heart rate at between 50 to 70 beats per minute

    # Removing  outliers in the 'ap_hi' coulmn that are above 220
    cardio_df.drop(cardio_df[cardio_df['ap_hi'] > 220].index, inplace = True)

    # Remove outliers in the 'ap_hi' coulmn that are below 100
    cardio_df.drop(cardio_df[cardio_df['ap_hi'] < 100].index, inplace = True)

    # ap lo maximum heart rate is around 150 beats per minute and the minumum is 65
    # Removing  outliers in the 'ap_lo' coulmn that are above  150
    cardio_df.drop(cardio_df[cardio_df['ap_lo'] > 140].index, inplace = True)
    # Remove outliers in the 'ap_lo' coulmn that are below 65
    cardio_df.drop(cardio_df[cardio_df['ap_lo'] < 60].index, inplace = True)

    # Converting  'height' column from cm to feet each cm = 0.032808399 foot

    cardio_df['height'] = round(cardio_df['height']*0.0328084, 2)

    # Converting 'weight' from kg to lb  1kg = 2.20462 lbs
    cardio_df['weight'] = round(cardio_df['weight'] * 2.20462, 1)

    cardio_df.to_csv("/opt/ml/processing/output/preprocessed/cardio_train_output.csv",header=False, index=False)
