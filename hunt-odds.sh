#!/bin/bash

# Fetch PDF of odds from AZGFD for: 2025, elk. Save into a PDF file.
# Don't fetch if file already exists at location.
if [ -f "elk_odds_2025.pdf" ];
then
	echo "File already downloaded."
else
	curl https://azgfd-portal-wordpress-pantheon.s3.us-west-2.amazonaws.com/wp-content/uploads/2025/08/22144539/2025-AZ-Elk-Draw-Odds.pdf > elk_odds_2025.pdf
fi

# Display odds based on game unit
read -p "Pick a game unit [e.g. '04B']: " game_unit
echo "Draw odds for GMU $game_unit: "
echo "=============================="
less elk_odds_2025.pdf | grep -i $game_unit 
