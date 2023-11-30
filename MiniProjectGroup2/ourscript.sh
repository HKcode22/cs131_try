

#!/bin/bash


# Count the number of entries (lines) in the dataset
num_entries=$(wc -l < "IMDB top 1000.csv")
echo "Number of entries: $num_entries" > entries.txt

# Display the column headers (features)
head -n 1 "IMDB top 1000.csv" | tr ',' '\n' | awk '{print "Feature: " $1}' > feature.txt

#value range
awk -F',' 'NR>1 {gsub(/"/, ""); gsub(/, /, ","); gsub(/ /, ""); split($3 "," $5 "," $6 "," $7, genres, ","); for (i in genres) { genre = genres[i]; if (genre != "" && genre !~ /^[0-9]+$/ && genre !~ /^[0-9]+min$/ && genre !~ /\(/ && genre !~ /^(Passed|NotRated|GP|G|Approved|TV-PG|TV-MA|TV-14|PG-13|PG|Summer)$/ && length(genre) > 1 && genre !~ /^[0-9.]+$/) print genre }}' "IMDB top 1000.csv" | sort | uniq | sort -nr > valuerange1.txt






awk -F',' 'NR > 1 && match($2, /\([0-9]{4}\)/) { year = substr($2, RSTART+1, RLENGTH-2); print NR".", year; if (!min_year || year < min_year) min_year = year; if (!max_year || year > max_year) max_year = year; } END { print "Lowest Year:", min_year; print "Highest Year:", max_year }' 'IMDB top 1000.csv'








awk -F',' 'NR > 1 && (($3 ~ /Sci-Fi/) || ($4 ~ /Sci-Fi/) || ($5 ~ /Sci-Fi/) || ($6 ~ /Sci-Fi/) || ($7 ~ /Sci-Fi/) || ($3 ~ /History/) || ($4 ~ /History/) || ($5 ~ /History/) || ($6 ~ /History/) || ($7 ~ /History/)) {print}' 'IMDB top 1000.csv' > comparetwogenre.txt








 awk -F',' 'BEGIN { sum = 0; count = 0 } NR > 1 { if ($0 ~ /Sci-Fi/) { if (match($0, /\$([0-9.]+)M/, m)) { box_office = m[1]; } else if (match($0, /Gross: \$(\S+)M/, m)) { box_office = m[1]; } if (box_office) { sum += box_office; count += 1; print count ": " box_office; } } } END { if (count > 0) { print "Average: " sum / count } else { print "No Sci-Fi movies found" } }' 'IMDB top 1000.csv'












awk -F',' 'BEGIN { sum = 0; count = 0 } NR > 1 { if ($0 ~ /History/) { if (match($0, /\$([0-9.]+)M/, m)) { box_office = m[1]; } else if (match($0, /Gross: \$(\S+)M/, m)) { box_office = m[1]; } if (box_office) { sum += box_office; count += 1; print count ": " box_office; } } } END { if (count > 0) { print "Average: " sum / count } else { print "No History movies found" } }' 'IMDB top 1000.csv' > historyboxofficeaverage.txt






awk -F',' 'BEGIN { sum = 0; count = 0 } NR > 1 { if ($0 ~ /Sci-Fi/) { if (match($0, /\$([0-9.]+)M/, m)) { box_office = m[1]; } else if (match($0, /Gross: \$(\S+)M/, m)) { box_office = m[1]; } if (box_office) { sum += box_office; count += 1; print count ": " box_office; } } } END { if (count > 0) { print "Average: " sum / count } else { print "No Sci-Fi movies found" } }' 'IMDB top 1000.csv' > scifiboxofficeaverage.txt





