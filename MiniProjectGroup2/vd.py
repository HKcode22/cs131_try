print("Hello, World!")

print("           ")



import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_csv('IMDB top 1000.csv')

# Load the CSV data using Pandas
df = pd.read_csv('your_dataset.csv')

# Display the range of numeric columns
numeric_columns = df.select_dtypes(include=['float64', 'int64']).columns
for column in numeric_columns:
    print(f"{column}: Min = {df[column].min()}, Max = {df[column].max()}")






