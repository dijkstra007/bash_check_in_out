#!/bin/bash
j=1
for i in $(ls *.in); do
    output="$(python main.py < $i > res.out)" 
    result="$(diff res.out $j.out)"
    correct="$(diff 1.out 1.out)"
    if [ $result -eq $correct]
    then
        echo "file $i is pass"
    else
        echo "file $i is wrong!!!!!!!!"
    fi
    echo $result
    j=$((j+1)) 
done