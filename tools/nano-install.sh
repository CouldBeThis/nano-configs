##!/bin/bash
####	Text styles
	### Bold
	#StyleBold=$(tput smso)
	#StyleBoldOff=$(tput rmso)
	### Reverse
	#StyleRev=$(tput rev)
	### reset all attributes
	#StyleAllOff=$(tput sgr0)
	### Set some colors
	#StyleFGBlue=$(tput setaf 4)	# text		= blue
	#StyleFGBrWhite=$(tput setaf 15)	# text 		= bright white
	#StyleBGWhite=$(tput setab 7)	# background	= white
	#StyleBGBlue=$(tput setab 4)	# background	= blue

####	declarations
	### where is nano currently?
	#NanoExistingPath=$(which nano)
	### what version of nano is installed?
	#NanoExistingVersion=$(nano -V | grep --only-matching -E "version .*" | sed 's/[[:alpha:]|(|[:space:]]//g' | awk -F- '{print $1}')
	### where will the old binary be moved to?
	#NanoExistingVersionNewPath=$NanoExistingPath-$NanoExistingVersion

	### 
	### Directory where donloads are found
	#NanoDownloadURLParent="https://nano-editor.org/dist/latest/"
	### File name required
	#NanoNewFile="nano-6.2.tar.gz"
	### just the file name with extension
	#NanoNewDir=$(basename -s .tar.gz $NanoNewFile)
	### Complete URL for download
	#NanoDownloadURLComplete=$NanoDownloadURLParent$NanoNewFile
	### NOTE for some reason the URL Produced byt the above doesn't download properly, so just hardcoding....
	##NanoDownloadURLComplete="https://nano-editor.org/dist/latest/nano-6.2.tar.gz"


#echo "Currently, nano is installed at $StyleFGBlue$NanoExistingPath$StyleAllOff"
#echo "Currently, nano version installed is $StyleFGBlue$NanoExistingVersion$StyleAllOff"

#echo "Existing nano will be moved to $StyleFGBlue$NanoExistingVersionNewPath$StyleAllOff"
##mv $NanoExistingPath $NanoExistingPath-$NanoExistingPath$NanoExistingVersion

#echo "Where do you want to put the files used to compile the new version of nano?"
#echo "Enter '.' for current directory or something else."

#read -p "location: "  NanoCompilePath
#echo "Path will be $StyleFGBlue$NanoCompilePath$StyleAllOff."

#cd $NanoCompilePath

#echo "New nano will be downloaded from $StyleFGBlue $NanoDownloadURLComplete $StyleAllOff"
#echo "The file name will be $StyleFGBlue $NanoNewFile $StyleAllOff"
#echo "The directory will be $StyleFGBlue $NanoNewDir $StyleAllOff"

#pwd

#wget $NanoDownloadURLComplete -o $NanoNewFile

##tar xf $NanoNewFile --directory="$NanoNewDir"


## echo "XXXXX $StyleFGBlue YYYY $StyleAllOff"

### install instructions available here:
### https://nano-editor.org/dist/latest/INSTALL


##tar xf nano-6.2.tar.xf --directory=nano6.2

##cd

##./configure

##make

##sudo make install

##make clean



## git clone git@github.com:CouldBeThis/nano-configs.git




