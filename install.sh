#!/bin/bash

# Use directory bgf is stored in
DIRECTORY='/home/vail/Development/New/bgf/'

if [ ~/.bash_aliases ] ; then
	echo -e "\n# bgf" >> ~/.bash_aliases ;
	echo -e "alias bgf='${DIRECTORY}/main.sh'\n" >> ~/.bash_aliases ;
	source ~/.bash_aliases ;
	source ~/bgf_completion.bash

elif [ ! ~/.bash_aliases ] ; then
	touch ~/.bash_aliases ;
	echo -e "\n# bgf" >> ~/.bash_aliases ;
	echo -e "alias bgf='${DIRECTORY}/main.sh'\n" >> ~/.bash_aliases ;
	source ~/.bash_aliases ;
	source ~/bgf_completion.bash
fi