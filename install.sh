#!/data/data/com.termux/files/usr/bin/bash

jdk_eight(){
  FILE=i8.sh  
}

rest(){
case $(dpkg --print-architecture) in
	aarch64)
		FILE=a64.sh;;
	arm64)
		FILE=a64.sh ;;
	armhf)
		FILE=a32.sh ;;
	armv7l)
		FILE=a32.sh  ;;
        x86_64)
                FILE=a64.sh  ;;
	arm)
		FILE=a32.sh  ;;
        armv8l)
                FILE=a32.sh  ;;
	*)
		echo -e "\e[91mERROR: Unknown architecture.\e[0m"; echo; exit ;;
	esac
}

arg=$1
if [[ $arg == 8 ]]; then
  jdk_eight
else
  rest
fi

chmod +x $FILE
bash $FILE

