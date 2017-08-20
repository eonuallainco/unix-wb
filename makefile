all: readme

readme:
	echo "# UNIX workbench - Eamonn O Nuallain" > README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
