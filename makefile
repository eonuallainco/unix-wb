all: readme

readme:
	echo "# UNIX workbench - Eamonn O Nuallain" > README.md
	date >> README.md
	echo "  " >> README.md
	ls -l | wc -l | sed -e 's/^[ \t]*//' >> README.md

clean:
	rm README.md
