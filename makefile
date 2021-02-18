all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "#guessinggame program#" > README.md
	echo "\ncreated on" `date` >> README.md
	echo " \nNumber of lines in guessing_game.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
 
