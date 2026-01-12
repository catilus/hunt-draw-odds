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
read -p "Pick a species [Bull or Antlerless]: " species

echo "Draw odds for GMU $game_unit and $species elk: "
echo "=============================="
echo "UNIT	HUNT	YEAR	METHOD	SEASON OPEN	SEASON CLOSE	SPECIES	1st CHOICE	2nd CHOICE	PERMITS	ODDS"	# display header
less elk_odds_2025.pdf | grep -i $game_unit | grep -i $species
# less elk_odds_2025.pdf | grep -iP "$game_unit|$species" 
