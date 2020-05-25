all: README.md

README.md: guessinggame.sh
	echo "#Course assignment(the Unix Workbench)" > README.md 
	echo "\n##Guessing Game" >> README.md
	echo "\n**TITLE(*Guess game*)**: a program called *guessinggame.sh*." >>README.md
	echo " This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number." >>README.md
	echo " **The date and time at which make was run** : " >>README.md
	date >> README.md
	echo " **Number of lines** of code contained in *guessinggame.sh* : " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
		

