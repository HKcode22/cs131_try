
mkdir -p "Workhsheet 5/United States"

music_count=0
entertainment_count=0
gaming_count=0
comedy_count=0

while IFS=, read -r channel category country
do
  if [ "$country" = "United States" ]; then
    case "$category" in
      "Music")
        echo "$channel" >> "Workhsheet 5/United States/Music.txt"
        ((music_count++))
        ;;
      "Entertainment")
        echo "$channel" >> "Workhsheet 5/United States/Entertainment.txt"
        ((entertainment_count++))
        ;;
      "Gaming")
        echo "$channel" >> "Workhsheet 5/United States/Gaming.txt"
        ((gaming_count++))
        ;;
      "Comedy")
        echo "$channel" >> "Workhsheet 5/United States/Comedy.txt"
        ((comedy_count++))
        ;;
    esac
  fi
done < "Global YouTube Statistics.csv"

echo "Music: $music_count" >> ws5.txt
echo "Entertainment: $entertainment_count" >> ws5.txt
echo "Gaming: $gaming_count" >> ws5.txt
echo "Comedy: $comedy_count" >> ws5.txt









while IFS=, read -r rank youtuber subscribers video_views category title uploads  country abbreviation channel_type video_views_rank country_rank channel_type_rank video_views_for_the_last_30_days lowest_monthly_earnings highest_monthly_earnnings lowest_yearly_earnings highest_yearly_earnings subscribers_for_last_30_days created_year created_month created_date gross_tertiary_education_enrollment poopulation unemployment_rate urban_population latitude longitude
do
    if [[ "$country" == "United States" ]]; then
        echo "$rank,$youtuber,$subscribers,$video_views,$category,$title,$uploads,$country,$abbreviation,$channel_type,$video_views_rank,$country_rank,$channeel_type_rank,$video_views_for_the_last_30_days,$lowest_monthly_earnings,$highest_monthly_earnings,$lowest_yearly_earnings,$highest_yearly_earnings,$subscribers__for_last_30_days,$created_year,$created_month,$created_date,$gross_tertiary_education_enrollment,$population,$unemployment_rate,$urban_population,$latitude,$loongitude" >> "Workhsheet 5/United States/${category}.txt"
    fi
done < "Global YouTube Statistics.csv"










mkdir -p "Workhsheet 5/United States"

music_count=0
entertainment_count=0
gaming_count=0
comedy_count=0

while IFS=, read -r channel category country
do
  if [ "$country" = "United States" ]; then
    case "$category" in
      "Music")
        ((music_count++))
        ;;
      "Entertainment")
        ((entertainment_count++))
        ;;
      "Gaming")
        ((gaming_count++))
        ;;
      "Comedy")
        ((comedy_count++))
        ;;
    esac
  fi
done < "Global YouTube Statistics.csv"

echo "Music: $music_count" >> ws5.txt
echo "Entertainment: $entertainment_count" >> ws5.txt
echo "Gaming: $gaming_count" >> ws5.txt
echo "Comedy: $comedy_count" >> ws5.txt








mkdir -p "Worksheet 5/Untied States" && categories=("Music" "Entertainment" "Gaming" "Comedy") && for category in "${categories[@]}"; do grep "United States,.*$category" "Global YouTube Statistics.csv" >> "Worksheet 5/United States/${category}.txt"; done










while IFS=, read -r rank youtuber subscribers video_views category title uploads  country abbreviation channel_type video_views_rank country_rank channel_type_rank video_views_for_the_last_30_days lowest_monthly_earnings highest_monthly_earnnings lowest_yearly_earnings highest_yearly_earnings subscribers_for_last_30_days created_year created_month created_date gross_tertiary_education_enrollment poopulation unemployment_rate urban_population latitude longitude



	while IFS=, read -r rank youtuber subscribers video_views category title uploads country abbreviation channel_type video_views_rank country_rank channel_type_rank video_views_for_the_last_30_days lowest_monthly_earnings highest_monthly_earnings lowest_yearly_earnings highest_yearly_earnings subscribers_for_last_30_days created_year created_month created_date gross_tertiary_education_enrollment population unemployment_rate urban_population latitude longitude
do
    if [[ "$country" == "United States" ]]; then
        echo "$rank,$youtuber,$subscribers,$video_views,$category,$title,$uploads,$country,$abbreviation,$channel_type,$video_views_rank,$country_rank,$channel_type_rank,$video_views_for_the_last_30_days,$lowest_monthly_earnings,$highest_monthly_earnings,$lowest_yearly_earnings,$highest_yearly_earnings,$subscribers_for_last_30_days,$created_year,$created_month,$created_date,$gross_tertiary_education_enrollment,$population,$unemployment_rate,$urban_population,$latitude,$longitude" >> "Worksheet 5/United States/${category}.txt"
    fi
done < "Global YouTube Statistics.csv"









categories=("Music" "Entertainment" "Gaming" "Comedy")

while IFS=, read -r rank youtuber subscribers video_views category title uploads country abbreviation channel_type video_views_rank country_rank channel_type_rank video_views_for_the_last_30_days lowest_monthly_earnings highest_monthly_earnings lowest_yearly_earnings highest_yearly_earnings subscribers_for_last_30_days created_year created_month created_date gross_tertiary_education_enrollment population unemployment_rate urban_population latitude longitude
do
    if [[ "$country" == "United States" ]]; then
        echo "$rank,$youtuber,$subscribers,$video_views,$category,$title,$uploads,$country,$abbreviation,$channel_type,$video_views_rank,$country_rank,$channel_type_rank,$video_views_for_the_last_30_days,$lowest_monthly_earnings,$highest_monthly_earnings,$lowest_yearly_earnings,$highest_yearly_earnings,$subscribers_for_last_30_days,$created_year,$created_month,$created_date,$gross_tertiary_education_enrollment,$population,$unemployment_rate,$urban_population,$latitude,$longitude" >> "Worksheet 5/United States/${category}.txt"
    fi
done < "Global YouTube Statistics.csv"

wc -w "Worksheet 5/United States/Entertainment.txt" "Worksheet 5/United States/Gaming.txt" "Worksheet 5/United States/Comedy.txt" "Worksheet 5/United States/Music.txt" >> ws5.txt



