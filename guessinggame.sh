#!binsh

function guessFiles {
  
  #Reading user input
  while [ 1 ]
  do
    echo Guess total number of files in current directory
    read number
  
    if [[ $number =~ ^[0-9]+$ ]]
    then
       echo Only integer value and is accepted
       continue
    elif [ $number -ge 0 ]
    then
       echo Number should not be less than Zero
       continue
    else
       break
    fi
  done
  
  totalFiles=$(ls -1  wc -l)
}
 
while [ 1 ]
do

    guessFiles  #- Executing the function
  
    if [ $number -gt $totalFiles ]
    then    
        echo Your guess is too high
        continue
    elif [ $number -lt $totalFiles ]
    then
        echo Your guess is too low
        continue
    else
        Congratulations!! You have gussed the correct number of files
         exit 0
    fi
done