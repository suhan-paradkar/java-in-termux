#!/data/data/com.termux/files/usr/bin/bash

#Setup
shopt -s expand_aliases
alias ee='echo -e'

#Greetings
echo
ee "\e[93mThis script will install openjdk-11 in Termux."
echo

#Checking for existing Java installation
if [ -e "$PREFIX"/bin/java ] || [ -e "$PREFIX"/share/openjdk-11.0.1/bin/java ] || [ -e "$PREFIX"/share/jdk8/bin/java ]
then
	ee "\e[32mJava is already installed!"
	java --version
	echo
	exit
else
	archname=$(dpkg --print-architecture)
	tag="v2.0"
	ex="deb"
	file="openjdk11"
	
	#Actual installation
	ee "\e[32m[*] \e[34mInstalling openjdk-11 for ${archname}..."
	ee "\e[32m[*] \e[34mPlease wait for some time....\e[0m"

	pkg install wget -y
	wget https://github.com/suhan-paradkar/java-in-termux/releases/download/"$tag"/openjdk11."$ex"
	wgetreturn=$?
	if [[ $wgetreturn -eq 0 ]]
	then
        dpkg -i openjdk11."$ex"
    	
    	echo
    	ee "\e[32mJava was successfully installed!"
    	ee "Check it by running \e[34mjava --version from terminal after restarting termux\e[0m
    	echo
    else 
        echo
        ee "\e[31mwget exited with an error code : $wgetreturn"
        case $wgetreturn in
        1)d
            ee "\e[31mError : Generic code error\e[0m"
            ;;
        2)
            ee "\e[31mError : Parse error-for instance, when parsing command-line options, the .wgetrc or .netrc...\e[0m"
            ;;
        3)
            ee "\e[31mError : File I/O error.\e[0m"
            ;;
        4)
            ee "\e[31mError : Network failure.\e[0m"
            ;;
        5)
            ee "\e[31mError : SSL verification failure.\e[0m"
            ;;
        6)
            ee "\e[31mError : Username/password authentication failure\e[0m"
            ;;
        7)
            ee "\e[31mError : Protocol errors.\e[0m"
            ;;
        8) 
            ee "\e[31mError : Server issued an error response.\e[0m"
            ;;
        esac
        
       
        echo
        exit
    fi
        
fi
