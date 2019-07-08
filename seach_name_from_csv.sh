#! /bin/bash
cnt=0
for x in 'grep name $1 | sed -e 's/,/ /g'';
do
    if [ "$x" = "name" ]; then
        break;
    fi
    cnt=$(( cnt + 1 ));
done

grep $2 $1 | grep -v name | cut -f $cnt -d ","