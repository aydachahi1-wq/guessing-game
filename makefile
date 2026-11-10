README.md: guessinggame.sh
	echo "# Projet : Guessing Game" > README.md
	echo "" >> README.md
	echo "**Date et heure :** $$(date)" >> README.md
	echo "" >> README.md
	echo "**Nombre de lignes dans guessinggame.sh :** $$(wc -l < guessinggame.sh)" >> README.md
	echo "" >> README.md
	echo "README généré automatiquement par make." >> README.md
