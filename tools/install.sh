#!/bin/bash

InstallDir=$HOME/.config/nano

echo $InstallDir

mv $InstallDir/nano $InstallDir/nano-old

git clone --recursive git@github.com:CouldBeThis/nano-configs.git $InstallDir









