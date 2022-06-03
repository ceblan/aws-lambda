##!/usr/bin/env bash

# @esp: Ejecuta ccc(..) para cambio de 50 con estos tipos de monedas [5, 1, 0.5, 0.25, 0.1]
# @eng: Executes cccI(..) with change of 50 *ucks with these coin values [5, 1, 0.5, 0.25, 0.1]
#
# aws lambda invoke --function-name myFirstAWSLambda --payload '{"key1":25, "key2":[5, 1, 0.5, 0.25, 0.1]}' outputfile.txt
#

echo ""
echo "Having aws-lambda execute... "
echo ""

TIMESTMP_INIT=$(date +%s)
aws lambda invoke --function-name myFirstAWSLambda --payload '{"key1":50, "key2":[5, 1, 0.5, 0.25]}' outputfile.txt
TIMESTMP_END=$(date +%s)

echo "" >> outputfile.txt
echo "Executed in $(expr $TIMESTMP_END - $TIMESTMP_INIT) secs. Bye!" >> outputfile.txt

cat outputfile.txt
echo ""

