#!/bin/sh
modelName=$1

echo
echo

#set for loop to run through each subject
for subNum in {053}
do
051,055,053,054,056,059,060,061,062,063,064,065,067,069,072,074,075,077,078,080,081,082,083,084,085,086,087,088,089,090,091,092,093,094,095,096,097,098,099}
    #Reminder that we are setting sthe ouptut directory 
   echo "subject "$subNum""

    #Create a design directory
    mkdir /Users/sofiacardenas/Desktop/4_Why_How_fMRI/"$subNum"/design

    #Reminder that we are going to copy the template file 
    echo "Copying the template file"

    cd /Users/sofiacardenas/Desktop/4_Why_How_fMRI

    cp design.fsf "$subNum"_design.fsf

    chmod 777 "$subNum"_design.fsf
    
    mv /Users/sofiacardenas/Desktop/4_Why_How_fMRI/"$subNum"_design.fsf /Users/sofiacardenas/Desktop/4_Why_How_fMRI/"$subNum"/design
    
    #Where are we
    pwd

    #Reminder that we are going to edit the template file 
    echo "Editing the template file"

    cd /Users/sofiacardenas/Desktop/4_Why_How_fMRI/"$subNum"/design

    pwd

    sed -i '' -e 's/subNum/'$subNum'/g' "$subNum"_design.fsf 
    
    pwd

    echo "run FEAT level 1"

    feat /Users/sofiacardenas/Desktop/4_Why_How_fMRI/"$subNum"/design/"$subNum"_design.fsf

done