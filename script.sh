categories=("Music" "Entertainment" "Gaming" "Comedy")

while IFS=, read -r rank youtuber subscribers video_views category title uploads country abbreviation channel_type video_views_rank country_rank channel_type_rank video_views_for_the_last_30_days lowest_monthly_earnings highest_monthly_earnings lowest_yearly_earnings highest_yearly_earnings subscribers_for_last_30_days created_year created_month created_date gross_tertiary_education_enrollment population unemployment_rate urban_population latitude longitude
do
    if [[ "$country" == "United States" ]]; then
        echo "$rank,$youtuber,$subscribers,$video_views,$category,$title,$uploads,$country,$abbreviation,$channel_type,$video_views_rank,$country_rank,$channel_type_rank,$video_views_for_the_last_30_days,$lowest_monthly_earnings,$highest_monthly_earnings,$lowest_yearly_earnings,$highest_yearly_earnings,$subscribers_for_last_30_days,$created_year,$created_month,$created_date,$gross_tertiary_education_enrollment,$population,$unemployment_rate,$urban_population,$latitude,$longitude" >> "Worksheet 5/United States/${category}.txt"

fi
done < "Global YouTube Statistics.csv"

wc -w "Worksheet 5/United States/Entertainment.txt" "Worksheet 5/United States/Gaming.txt" "Worksheet 5/United States/Comedy.txt" "Worksheet 5/United States/Music.txt" > ws5.txt
