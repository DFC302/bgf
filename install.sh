#!/bin/bash

# Use directory bgf is stored in
DIRECTORY='/root/tools/recon/bgf'

if [ ~/.bash_aliases ] ; then
	echo -e "\n# bgf" >> ~/.bash_aliases ;
	echo -e "alias bgf='${DIRECTORY}/main.sh'\n" >> ~/.bash_aliases ;
	echo "source ${DIRECTORY}/bgf_completion.bash" >> ~/.bashrc
	source ~/.bashrc
	chmod -R 777 ${DIRECTORY}
	chown -R root ${DIRECTORY}
	chgrp -R root ${DIRECTORY}

elif [ ! ~/.bash_aliases ] ; then
	touch ~/.bash_aliases ;
	echo -e "\n# bgf" >> ~/.bash_aliases ;
	echo -e "alias bgf='${DIRECTORY}/main.sh'\n" >> ~/.bash_aliases ;
	echo "source ${DIRECTORY}/bgf_completion.bash" >> ~/.bashrc
	source ~/.bashrc
	chmod -R 777 ${DIRECTORY}
	chown -R root ${DIRECTORY}
	chgrp -R root ${DIRECTORY}
fi