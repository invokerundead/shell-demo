#! /bin/bash -

function ui()
{
	tput clear
	tput civis
	printf " --------------This is only test-----------------\n"
	tput cup 2 7
	printf "1,ok\n"
	tput cup 3 7
	printf "2,ok\n"
	tput cnorm
	printf "Which(1 or 2):"
}
function rotate()
{
	t=0.05
	tput sc
	time_total=$1+`date +%s`
	while [[ $time_exec -lt $time_total ]]
	do
		time_exec=$(date +%s)
		((++i))
		case $i in
		1) printf "-" ; tput rc ; sleep $t;;
		2) printf "\\" ; tput rc ; sleep $t;;
		3) printf "|" ; tput rc ; sleep $t;;
		4) printf "/" ; tput rc ; sleep $t;;
		*) i=0 ;;
		esac
	done
	tput rc
	tput el
	printf "\n"
}
ui
rotate 3
