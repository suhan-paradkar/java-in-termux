#!/data/data/com.termux/files/usr/bin/bash

#Setup
shopt -s expand_aliases
alias ee='echo -e'

#Greetings
echo
ee "\e[93mThis script will install Java(jdk8) in Termux."
echo
#Checking for existing Java installation
if [ -e "$PREFIX"/bin/java ] || [ -e "$PREFIX"/share/openjdk-11.0.1/bin/java ] || [ -e "$PREFIX"/share/jdk8/bin/java ]
then
ee "\e[32mJava is already installed!\e[0m"
echo
exit
else

#Actual installation
ee "\e[32m[*] \e[34mDownloading JDK-8 for $(dpkg --print-architecture)...\e[0m"
pkg install wget
wget https://github.com/suhan-paradkar/java-in-termux/releases/download/v2.5/openjdk_8.0_arm.deb 

wgetreturn=$?
    if [[ $wgetreturn -eq 0 ]]
    then
    ee "\e[32m[*] \e[34mInstalling JDK8..."
    dpkg -i openjdk_8.0_arm.deb

    ee "\e[32m[*] \e[34mSeting-up %JAVA_HOME%..."
    export JAVA_HOME=$PREFIX/share/jdk8
    echo "export JAVA_HOME=""$PREFIX""/share/jdk8" >> "$HOME"/.profile
    PATH=$PREFIX/share/jdk8/bin:$PATH
    echo "PATH=""$PREFIX""/share/jdk8/bin:""$PATH"" " >> "$HOME"/.profile
    
    cd $PREFIX/share/jdk8/bin
    chmod +x *
    cd $HOME/java-in-termux/

    echo
    ee "\e[32mJava was successfully installed!\e[39m"
    ee "Enjoy your new, tasty Java\e[0m"
    ee "\e[32m Note : You must restart termux by exiting or start a new instance of termux, in order to load java command \e[0m"
    echo
    echo                                                
    else
        ee "\e[31mwget exited with an error code : $wgetreturn"
        case $wgetreturn in
        1)
            ee "\e[31mError : Generic code error\e[0m"
            ;;
        2)
            ee "\e[31mError : Parse error-for instance, when parsing command-line options, the .wgetrc or .netrc...\e[0m]"
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
