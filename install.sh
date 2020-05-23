#!/bin/bash

# Use directory bgf is stored in
DIRECTORY=~/bgf
USER=
ALIAS_FILE=

if [ ~/.bash_aliases ] ; then
	echo -e "\n# bgf" >> ~/${ALIAS_FILE} ;
	echo -e "alias bgf='${DIRECTORY}/main.sh'\n" >> ~/${ALIAS_FILE} ;
	echo "source ${DIRECTORY}/bgf_completion.bash" >> ~/.bashrc
	source ~/.bashrc
	chmod -R 777 ${DIRECTORY}
	chown -R ${USER} ${DIRECTORY}
	chgrp -R ${USER} ${DIRECTORY}

elif [ ! ~/.bash_aliases ] ; then
	touch ~/${ALIAS_FILE} ;
	echo -e "\n# bgf" >> ~/${ALIAS_FILE} ;
	echo -e "alias bgf='${DIRECTORY}/main.sh'\n" >> ~/${ALIAS_FILE} ;
	echo "source ${DIRECTORY}/bgf_completion.bash" >> ~/.bashrc
	source ~/.bashrc
	chmod -R 777 ${DIRECTORY}
	chown -R ${USER} ${DIRECTORY}
	chgrp -R ${USER} ${DIRECTORY}
fi
