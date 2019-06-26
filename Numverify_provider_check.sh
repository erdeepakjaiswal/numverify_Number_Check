#!/bin/bash
> /var/tmp/output.tmp
while read -r number
do
curl "http://apilayer.net/api/validate?access_key=6ade266d81d772e70e845738f56ea94c&number=${number}" | cut -d',' -f 2,9 >> /var/tmp/output.tmp
done < number.txt