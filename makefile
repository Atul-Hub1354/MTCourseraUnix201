all: README.md

README.md: guessinggame.sh
           touch README.md
           echo "# MTCourseraUnix201" > README.md
           echo "## Repository for Mindtree 201 course - The Unix Workbench from Coursera" >> README.md
           echo " \n" >> README.md
           echo "This repository contains "guessinggame.sh" script for guessing the total number of files in current directory" >> README.md
           echo " \n" >> README.md
           echo "1. Script reads the input number" >> README.md
           echo "2. Compare the input number with total number of files in directory" >> README.md
           echo "3. If number is less than total number of files, it prints - "Your guess is too low" and ask for re-enter" >> README.md
           echo "4. If number is greater than total number of files, it prints - "Your guess is too high" and ask for re-enter" >> README.md
           echo "5. If your guess is proper, it prints - "Congratulations" and exit the script" >> README.md
          
clean:
           rm README.md
