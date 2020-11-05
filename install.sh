#!/data/data/com.termux/files/usr/bin/bash

#Setup
shopt -s expand_aliases
alias ee='echo -e'

#Greetings
echo
ee "\e[93mThis script will install openjdk-11.0.1 in Termux."
ee "\e[93mLibraries compiled and  scripted by \e[32mMrAdityaAlok."
echo

#Checking for existing Java installation
if [ -e $PREFIX/bin/java ]
then
	ee "\e[32mJava is already installed!"
	echo
	exit
else
	#Checking, whether is someone trying to cheat and simplyfy their installation it on Linux (i.e. x86 (not listad, as you can see) machine) using this script, which have no reason to work.
	case `dpkg --print-architecture` in
	aarch64)
		archname="aarch64"; tag="v8" ;;
	arm64)
		archname="aarch64"; tag="v8" ;;
	armhf)
		archname="arm"; tag="v8-151" ;;
	armv7l)
		archname="arm"; tag="v8-151" ;;
	arm)
		archname="arm"; tag="v8-151" ;;
	*)
		ee "\e[91mERROR: Unknown architecture."; echo; exit ;;
	esac
	
	#Actual installation
	ee "\e[32m[Downloading...] \e[34mopenjdk-11.0.1 (248MB) for ${archname}..."
	ee "\e[32m[Downloading...] Pleae wait for some time...."
	
	wget https://github.com/MrAdityaAlok/openjdk-in-termux/releases/download/v1.0.0/openjdk-11.0.1.tar.gz
	
	ee "\e[32m[*] \e[34mMoving JDK to system..."
	mv openjdk-11.0.1.tar.gz $PREFIX/share
	
	ee "\e[32m[*] \e[34mExtracting JDK..."
	cd $PREFIX/share
	tar -xzvf openjdk-11.0.1.tar.gz
	
	ee "\e[32m[*] \e[34mSeting-up environment variable %JAVA_HOME%..."
	export JAVA_HOME=$PREFIX/share/openjdk-11.0.1
	echo "export JAVA_HOME=$PREFIX/share/openjdk-11.0.1/bin" >> $HOME/.profile
	
	
	
	ee "\e[32m[*] \e[34mCleaning up temporary files..."
	rm -rf $HOME/install.sh
	rm -rf $PREFIX/share/openjdk-11.0.1.tar.gz

	
	echo
	ee "\e[32mJava was successfully installed!\e[39m"
	echo "Enjoy ...."
	echo
fi
