import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt



url = 'https://raw.githubusercontent.com/HKcode22/cs131/master/MiniProjectGroup2/IMDB%20top%201000.csv'

df = pd.read_csv(url)
print("CSV")
display(df.head())
display(df.tail())
#data = pd.read_csv('genres_count.txt', sep=' ', names=['Count', 'Genre'], index_col='Genre')


print("")
print("")
print("")
print("")


print("Information")
display(df.info())

#Bar plot
print("")
print("")
print("")
print("")
genres = df['Genre'].str.replace('"', '').str.split(', ').explode()
# Convert to Pandas Series
genres_series = pd.Series(genres)
# Get genre counts
genres_count = genres_series.value_counts().reset_index()
# Rename columns
genres_count.columns = ['Genre', 'Count']
plt.figure(figsize=(10,6))
bar_plot = genres_count.sort_values(by='Count', ascending=False).head(20).plot(kind='barh', color='skyblue')
plt.title('Top Movie Genres in IMDB Top 1000 Bar Chat')
plt.xlabel('Number of Movies')
plt.ylabel('Genre')
plt.yticks(range(len(genres_count.head(30)['Genre'])), genres_count.head(30)['Genre'])
for index, value in enumerate(genres_count.head(30)['Count']):
    bar_plot.text(value, index, str(value))
    # bar_plot.text(value, index, genres_count.head(20)['Genre'].iloc[index], ha='right')  # Add genre name on the bar
# top_genres = genres_count.head(20)
# top_genres.plot(kind='barh', color='skyblue')
plt.show()

# for genre in genres:
#     print(genre)

#Pie Chart
print("")
print("")
print("")
print("")
plt.figure(figsize=(18,18))
plt.title('Top 10 Movies Genres in IMDB Top 1000 Pie Chat')
plt.ylabel('Genre')
for index, value in enumerate(genres_count.head(10)['Count']):
    bar_plot.text(value, index, str(value))
genres_count.set_index('Genre', inplace=True)
plt.pie(genres_count.head(10)['Count'], labels=genres_count.head(10).index, autopct='%1.1f%%', startangle=90, colors=['skyblue', 'lightcoral', 'lightgreen', 'lightyellow', 'lightpink'])
plt.show()
