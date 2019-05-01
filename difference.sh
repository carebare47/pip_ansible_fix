#!/usr/bin/env bash

filename='pip.txt'
echo -e "Tom \t\t\t Anastasios"
echo "~~~~~~~~~~~~~~~~~~~~~~~"
echo "pip: "

pip freeze > pipA.txt
filename_2='pipA.txt'
while read p; do 
    while read q; do 
 	if [[ ${q%%=*} == ${p%%=*} ]] ; then	 
 		if [[ ${p#*=} != ${q#*=} ]] ; then	 
                    echo -e "${q}\t\t\t${p#*=}" 
                fi
        fi 
    done < $filename_2   
done < $filename

filename='pip2.txt'
pip2 freeze > pip2A.txt
filename_2='pip2A.txt'
echo "~~~~~~~~~~~~~~~~~~~~~~~"
echo "pip2: "
while read p; do 
    while read q; do 
 	if [[ ${q%%=*} == ${p%%=*} ]] ; then	 
 		if [[ ${p#*=} != ${q#*=} ]] ; then	 
                    echo -e "${q}\t\t\t${p#*=}" 
                fi
        fi 
    done < $filename_2   
done < $filename

filename='pip3.txt'
pip3 freeze > pip3A.txt
filename_2='pip3A.txt'
echo "~~~~~~~~~~~~~~~~~~~~~~~"
echo "pip3: "
while read p; do 
    while read q; do 
 	if [[ ${q%%=*} == ${p%%=*} ]] ; then	 
 		if [[ ${p#*=} != ${q#*=} ]] ; then	 
                    echo -e "${q}\t\t\t${p#*=}" 
                fi
        fi 
    done < $filename_2   
done < $filename
