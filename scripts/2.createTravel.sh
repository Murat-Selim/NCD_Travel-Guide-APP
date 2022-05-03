#!/usr/bin/env bash
set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 1

echo
echo 'About to call createTravel() on the contract'
echo near call $CONTRACT createTravel '{"country":"'"$country"'", "city":"'"$city"'", "title":"'"$title"'", "desc":"'"$desc"'"}' --accountId $OWNER
echo
echo \$CONTRACT is $CONTRACT
echo \$OWNER is $OWNER
echo  '(country):' \$country is [ $country ] 
echo  '(city):' \$city is [ $city ] 
echo  '(title):' \$title is [ $title ] 
echo  '(desc):' \$desc is [ $desc ] 
echo
near call $CONTRACT createTravel '{"country":"'"$country"'", "city":"'"$city"'", "title":"'"$title"'", "desc":"'"$desc"'"}' --accountId $OWNER