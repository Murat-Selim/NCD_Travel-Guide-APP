#!/usr/bin/env bash
set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 1

echo
echo 'About to call deleteTravelById() on the contract'
echo near call $CONTRACT deleteTravelById '{"id": '"$1"'}' --accountId $OWNER
echo
echo \$CONTRACT is $CONTRACT
echo \$OWNER is $OWNER
echo \$1 is [ $1 ] '(id)' 
echo
near call $CONTRACT deleteTravelById '{"id": '"$1"'}' --accountId $OWNER