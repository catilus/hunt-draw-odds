#!/bin/bash

# Fetch PDF of odds from AZGFD for: 2025, elk. Save into a PDF file.
curl https://azgfd-portal-wordpress-pantheon.s3.us-west-2.amazonaws.com/wp-content/uploads/2025/08/22144539/2025-AZ-Elk-Draw-Odds.pdf > elk_odds_2025.pdf

# Display odds based on game unit
echo "Pick a game unit [e.g. '04B']: "
read game_unit
echo "Draw odds for GMU $game_unit: \n"
less elk_odds_2025.pdf | grep $game_unit 
