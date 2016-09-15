#!/bin/bash
beli=`curl -s http://www.bankmandiri.co.id/ | grep USD -A2 | cut -d ">" -f2 | cut "<" -f1 | xargs | cut -d " " -f2`
jual=`curl -s http://www.bankmandiri.co.id/ | grep USD -A2 | cut -d ">" -f2 | cut "<" -f1 | xargs | cut -d " " -f2`
echo "Harga Jual: $jual"
echo "Harga beli: $beli"
