s#! /bin/bash -x

declare -a OddSeries
declare -a EvenSeries
declare -a PrimeSeries

count=0
cnt=0
cout=0

function checkPrime(){

	COUNT=0
        local n=$1

	for ((i=1;i<=n;i++))
        do
                if [ $(( $n % $i )) -eq 0 ]
                then
                        COUNT=$(( $COUNT + 1 ))
                fi
        done

	if [ $COUNT -eq 2 ]
        then
                echo $n
        fi
}

function checkOdd(){

	local n=$1
	if [ $(( $n % 2 )) -ne 0 ]
	then
		echo $n
	fi
}


function checkEven(){

	local n=$1
	if [ $(( $n % 2 )) -eq 0 ]
	then
		echo $n
	fi
}

read -p "Enter the limit for the series:" N

for ((i=1;i<N;i++))
do
	PrimeSeries[$((count++))]="$( checkPrime $i )"
	OddSeries[$((cnt++))]="$( checkOdd $i )"
	EvenSeries[$((cout++))]="$( checkEven $i )"
done

echo "Prime Series :${PrimeSeries[*]}"

echo "Odd Series :${OddSeries[*]}"

echo "Even Series :${EvenSeries[*]}"
