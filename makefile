readme.md:
	echo -e "# Guessing Game\n" > README.md
	#echo "" > README.md
	date >> README.md
	echo -e "\nThis script contains the following number of entries:" >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm -rf README.md