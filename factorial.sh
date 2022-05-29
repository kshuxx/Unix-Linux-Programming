echo -ne "\nEnter a number:- "
read num

fact=1
i=1

while [ $i -le $num ]
do
  fact=$((fact * num))
  num=$((num - 1))
done

echo $fact