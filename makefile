all: README.md

README.md:
	@echo "# Guessing Game using Bash" > README.md
	@echo "Date and time of make: $$(date)  " >> README.md
	@echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
