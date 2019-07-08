#! /bin/bash
result=0
for x in "$@"
do
   result=$(( $result + $x ))
done

echo $result