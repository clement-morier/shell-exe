if [ $2 = "+" ]
then
	total=$(echo "$1+$3" | bc -l)
elif [ $2 = "-" ]
then
        total=$(echo "$1-$3" | bc -l)
elif [ $2 = "x" ]
then
        total=$(echo "$1*$3" | bc -l)
elif [ $2 = "/" ]
then
        total=$(echo "$1/$3" | bc -l)
fi
echo $total
