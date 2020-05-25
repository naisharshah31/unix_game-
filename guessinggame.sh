function guessinggame {
	while( [[ 1 -eq 1 ]] )
	do
		echo "Guess, how many files are in the current directory ?"
		read num
		orignal_num=$(ls | wc -l)
		if [[ $num -eq $orignal_num ]]
		then
			echo "Congrats! you have guessed correct counut of files($orignal_num) !!!"
			break
		else
			if [[ $num -gt $(expr $orignal_num+5) ]] 
			then
				echo "guess is too high!! try again.."
				#elif condition to check guessed value is too low(no_of_files-5)
			elif [[ $num -lt $(expr $orignal_num-5) ]]
			then
           			echo "guess is too low!! try again.."
				#else the guess is near the real value
			else
				echo "guess is near the real value!! try again.."
			fi
			echo "Try Again!!!"
		fi
	done
}
guessinggame

