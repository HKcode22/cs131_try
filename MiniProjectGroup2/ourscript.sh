

#!/bin/bash


# Count the number of entries (lines) in the dataset
num_entries=$(wc -l < "IMDB top 1000.csv")
echo "Number of entries: $num_entries" > entries.txt

# Display the column headers (features)
head -n 1 "IMDB top 1000.csv" | tr ',' '\n' | awk '{print "Feature: " $1}' > feature.txt

#value range
awk -F',' 'NR>1 {gsub(/"/, ""); gsub(/, /, ","); gsub(/ /, ""); split($3 "," $5 "," $6 "," $7, genres, ","); for (i in genres) { genre = genres[i]; if (genre != "" && genre !~ /^[0-9]+$/ && genre !~ /^[0-9]+min$/ && genre !~ /\(/ && genre !~ /^(Passed|NotRated|GP|G|Approved|TV-PG|TV-MA|TV-14|PG-13|PG|Summer)$/ && length(genre) > 1 && genre !~ /^[0-9.]+$/) print genre }}' "IMDB top 1000.csv" | sort | uniq | sort -nr > valuerange1.txt





