#!/usr/bin/env bash
set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 1

echo
echo 'About to call createTravel() on the contract'
echo near call $CONTRACT createTravel '{"country": "$country", "city": "$city", "title": "$title", "desc": "$desc"}' --accountId $OWNER
echo
echo \$CONTRACT is $CONTRACT
echo \$OWNER is $OWNER
echo \$country is [ $country ]  '(country)'
echo \$city is [ $city ] '(city)' 
echo \$title is [ $title ] '(title)'
echo \$desc is [ $desc ] '(desc)'
echo "--------------------------------------------"
echo
echo

near call $CONTRACT createTravel '{"country": "'"$country"'", "city": "'"$city"'", "title": "'"$title"'", "desc": "'"$desc"'"}' --accountId $OWNER