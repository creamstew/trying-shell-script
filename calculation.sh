#! /bin/bash
result=$1

for x in ${@:2:($#-1)}
do
if [[ $x = [0-9] ]]; then
  result=$(( $result $operator $x ))
elif [[ $x = [-+\/] ]]; then
  operator=$x
else
  operator="*"
fi
done

echo $result