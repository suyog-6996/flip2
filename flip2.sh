echo "Welcomee to FlipCoinSimulator"

flip=$((RANDOM%2))

if(( flip == 1 ))
then
	echo "HEAD"
else
	echo "TAIL"
fi
