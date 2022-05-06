#!/usr/bin/env bash
set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 1

echo
echo 'About to call createTravel() on the contract'
echo near call $CONTRACT createTravel '{"country": "$1", "city": "$2", "title": "$3", "desc": "$4"}' --accountId $OWNER
echo
echo \$CONTRACT is $CONTRACT
echo \$OWNER is $OWNER
echo \$1 is [ $1 ] '(country)'
echo \$2 is [ $2 ] '(city)' 
echo \$3 is [ $3 ] '(title)'
echo \$4 is [ $4 ] '(desc)'
echo "--------------------------------------------"
echo
echo

near call $CONTRACT createTravel '{"country": "'"$1"'", "city": "'"$2"'", "title": "'"$3"'", "desc": "'"$4"'"}' --accountId $OWNER