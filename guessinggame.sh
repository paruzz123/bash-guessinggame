function checkcount {
	local numfiles=$(ls | wc -l)
	
	if [[ $1 -eq $numfiles ]]
	then
		return 1
	elif [[ $1 -lt $numfiles ]]
	then
		return 2
	else
		return 3
	fi
}

echo "Guess the number of files in this directory?"
echo "No cookies for guessing: "

while(true)
do
	read num
	checkcount $num
	comparison=$?
	if [[ $comparison -eq 1 ]]
	then
		echo "Congratulations! That's accurate!"
		break
	elif [[ $comparison -eq 2 ]]
	then
		echo "Your guess is too low! Try again: "
	elif [[ $comparison -eq 3 ]]
	then
		echo "Your guess is too high! Try again: "
	fi
done
