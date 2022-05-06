#!/usr/bin/env bash
set -e

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$OWNER" ] && echo "Missing \$OWNER environment variable" && exit 1

echo
echo 'About to call getTravels() on the contract'
echo near view $CONTRACT getTravels --accountId $OWNER
echo
echo \$CONTRACT is $CONTRACT
echo
near view $CONTRACT getTravels --accountId $OWNER