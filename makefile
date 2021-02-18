all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "#guessinggame program#" > README.md
	echo "created on" `date` >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
 
