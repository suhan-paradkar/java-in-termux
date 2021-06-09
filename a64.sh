#!/data/data/com.termux/files/usr/bin/bash

#Setup
shopt -s expand_aliases
alias ee='echo -e'

#Greetings
echo
ee "\e[93mThis script will install openjdk-11 in Termux."
echo

#Checking for existing Java installation
if [ -e "$PREFIX"/bin/java ] || [ -e "$PREFIX"/share/jvm/openjdk-11.0.1/bin/java ] || [ -e "$PREFIX"/share/jdk8/bin/java ]
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
	
       read -p "There are two java files for this cpu architecture.. choose one... 
       1) Full Openjdk[~231MB]
       2) Partial implementation (not standalone may be buggy)[~20MB] 
       3) JDK8 by hax4us, compiled into deb by me
       4) JDK9
	 (1|2|3|4)" in

       if [[ $in -eq 1 ]]
        then
	#Actual installation
	ee "\e[32m[*] \e[34mInstalling openjdk-11 for ${archname}..."
	ee "\e[32m[*] \e[34mPlease wait for some time....\e[0m"

	pkg install wget -y
	wget https://github.com/suhan-paradkar/java-in-termux/releases/download/v2.0/openjdk11.deb
	wgetreturn=$?
	if [[ $wgetreturn -eq 0 ]]
	then
        dpkg -i openjdk11."$ex"
    	cd $PREFIX/share/jvm/openjdk-11.0.1/bin/
        chmod +x *
    	echo
    	ee "\e[32mJava was successfully installed!"
    	ee "Check it by running \e[34mjava --version from terminal after restarting termux\e[0m"
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
      elif [[ $in -eq 2 ]]
      then
      #Actual installation
	ee "\e[32m[*] \e[34mInstalling partial openjdk-11 for ${archname}..."
	ee "\e[32m[*] \e[34mPlease wait for some time....\e[0m"

	pkg install wget -y
	wget https://github.com/suhan-paradkar/java-in-termux/releases/download/v2.0/openjdk11_jvdroid.deb
	wgetreturn=$?
	if [[ $wgetreturn -eq 0 ]]
	then
        dpkg -i openjdk11_jvdroid."$ex"
    	
    	echo
    	ee "\e[32mPartial Java was successfully installed!"
    	ee "Check it by running \e[34mjava --version from terminal after restarting termux\e[0m"
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
    elif [[ $in -eq 3 ]]
          then
          #Actual installation
    	ee "\e[32m[*] \e[34mInstalling openjdk8 for ${archname}..."
    	ee "\e[32m[*] \e[34mPlease wait for some time....\e[0m"
    
    	pkg install wget -y
    	wget https://github.com/suhan-paradkar/java-in-termux/releases/download/v2.5/openjdk_8.0_aarch64.deb
    	wgetreturn=$?
    	if [[ $wgetreturn -eq 0 ]]
    	then
            dpkg -i openjdk_8.0_aarch64."$ex"
            export JAVA_HOME=$PREFIX/share/jdk8
            echo "export JAVA_HOME=""$PREFIX""/share/jdk8" >> "$HOME"/.profile
            PATH=$PREFIX/share/jdk8/bin:$PATH
            echo "PATH=""$PREFIX""/share/jdk8/bin:""$PATH"" " >> "$HOME"/.profile
            cd $PREFIX/share/jdk8/bin
            chmod +x *
       	    cd $HOME/java-in-termux/       	            	
        	echo
        	ee "\e[32mJava8 was successfully installed!"
        	ee "Check it by running \e[34mjava --version from terminal after restarting termux\e[0m"
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
    elif [[ $in -eq 4 ]]
	#Actual installation
        ee "\e[32m[*] \e[34mInstalling openjdk9 for ${archname}$
        ee "\e[32m[*] \e[34mPlease wait for some time....\e[0m"

        pkg install wget -y
	wget https://github.com/suhan-paradkar/java-in-termux/releases/download/OpenJDK9/alsa-lib_1.1.3_${archname}.deb
	wget https://github.com/suhan-paradkar/java-in-termux/releases/download/OpenJDK9/openjdk-9-jre-headless_9.2017.8.20-1_${archname}.deb
	wget https://github.com/suhan-paradkar/java-in-termux/releases/download/OpenJDK9/openjdk-9-jdk-headless_9.2017.8.20-1_${archname}.deb	

	pkg in ./alsa-lib_1.1.3_${archname}.deb ./openjdk-9-jre-headless_9.2017.8.20-1_${archname}.deb ./openjdk-9-jdk-headless_9.2017.8.20-1_${archname}.deb

echo
                ee "\e[32mJava8 was successfully installed!"
                ee "Check it by running \e[34mjava --version from terminal after restarting termux\e[0m"
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
    else 
     ee "\e[31mInvalid input.\e[0m"
  fi
fi
