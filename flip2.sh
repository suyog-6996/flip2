echo "Welcome to FlipCoinSimulator"

function flipCoin(){

declare -A combination
num=$1
key=""

for (( i=0;i<50;i++ ))
do

	for ((j=0;j<$num;j++))
	do
		flip=$((RANDOM%2))

	if (( flip == 1 ))
	then
		key=$key"HEADS"
	else
		key=$key"TAILS"
	fi
	done

	combination[$key]=$(( ${combination[$key]} + 1 ))
	key=""
done

	percentage ${!combination[@]}
}

function percentage(){

result=${@}
echo

for i in $result
do
	j=${combination[$i]}
	echo "$i	 $(( ($j * 100 ) / 30 ))"

done | sort -k2 -nr
}

flipCoin 1
