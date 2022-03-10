#!/bin/bash
###	Text styles
	## Bold
	StyleBold=$(tput smso)
	StyleBoldOff=$(tput rmso)
	## Reverse
	StyleRev=$(tput rev)
	## reset all attributes
	StyleAllOff=$(tput sgr0)
	## Set some colors
	StyleFGBlue=$(tput setaf 4)	# text		= blue
	StyleFGBrWhite=$(tput setaf 15)	# text 		= bright white
	StyleBGWhite=$(tput setab 7)	# background	= white
	StyleBGBlue=$(tput setab 4)	# background	= blue

###	declarations
	## where is nano currently?
	NanoExistingPath=$(which nano)
	## what version of nano is installed
	NanoExistingVersion=$(nano -V | grep --only-matching -E "version .*" | sed 's/[[:alpha:]|(|[:space:]]//g' | awk -F- '{print $1}')
	NanoExistingVersionNewPath=$NanoExistingPath-$NanoExistingVersion

echo "Currently, nano is installed at $StyleFGBlue$NanoExistingPath$StyleAllOff"
echo "Currently, nano version installed is $StyleFGBlue$NanoExistingVersion$StyleAllOff"

echo "existing nano will be moved to $StyleFGBlue$NanoExistingVersionNewPath$AllStyleOff"


#mv $NanoExistingPath $NanoExistingPath-$NanoExistingPath$NanoExistingVersion

## install instructions available here:
## https://nano-editor.org/dist/latest/INSTALL


#wget https://nano-editor.org/dist/latest/nano-6.2.tar.gz
#tar xf nano-6.2.tar.xf --directory=nano6.2

#cd

#./configure

#make

#sudo make install

#make clean



# git clone git@github.com:CouldBeThis/nano-configs.git




