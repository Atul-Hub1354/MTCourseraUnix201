#!/bin/sh

#Function for guessing the number of files in the current directory
function guessFiles {
  #Reading user input
  while [ 1 ]
  do
    echo "Guess total number of files in current directory"
    read number
    
    #Verify if input is an intger, if not then ask to re-enter
    if ! [[ "$number" =~ ^[0-9]+$ ]]
    then
       echo "Error: Only Integer is Accepted. Re-enter the number."
       continue
    else
       break
    fi
  done
  
  totalFiles=$(ls -1 | wc -l)    #<- File count in current directory
}
 
#Verifying if given inut is matching the file count or not
while [ 1 ]
do

    guessFiles  #- Executing the function
  
    if [[ $number -gt $totalFiles ]]
    then    
        echo "Your guess is too high"
        continue
    elif [[ $number -lt $totalFiles ]]
    then
        echo "Your guess is too low"
        continue
    else
        echo "Congratulations!! You have gussed the correct number of files"
        exit 0
    fi
done
