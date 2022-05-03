#!/usr/bin/env bash
set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 1

echo
echo 'About to call getTravelById() on the contract'
echo near call $CONTRACT getTravelById '{"id":'"$id"'}' --accountId $OWNER
echo
echo \$CONTRACT is $CONTRACT
echo  '(id):' \$id is [ $id ] 
echo
near call $CONTRACT getTravelById '{"id":'"$id"'}' --accountId $OWNER