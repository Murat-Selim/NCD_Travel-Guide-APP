#!/usr/bin/env bash
set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 1

echo
echo 'About to call updateTravel() on the contract'
echo near call $CONTRACT updateTravel '{"id": '"$1"', "country": "'"$2"'", "city": "'"$3"'", "title": "'"$4"'", "desc": "'"$5"'"}' --accountId $OWNER
echo
echo \$CONTRACT is $CONTRACT
echo \$OWNER is $OWNER
echo \$1 is [ $1 ] '(id)'
echo \$2 is [ $2 ] '(country)'
echo \$3 is [ $3 ] '(city)'
echo \$4 is [ $4 ] '(title)'
echo \$5 is [ $5 ] '(desc)'
echo
near call $CONTRACT updateTravel '{"id": '"$1"', "country": "'"$2"'", "city": "'"$3"'", "title": "'"$4"'", "desc": "'"$5"'"}' --accountId $OWNER