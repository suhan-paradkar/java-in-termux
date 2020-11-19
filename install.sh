#!/data/data/com.termux/files/usr/bin/bash
	case $(dpkg --print-architecture) in
	aarch64)
		FILE=a64.sh;;
	arm64)
		FILE=a64.sh ;;
	armhf)
		FILE=a32.sh ;;
	armv7l)
		FILE=a32.sh  ;;
	arm)
		FILE=a32.sh  ;;
	*)
		ee "\e[91mERROR: Unknown architecture.\e[0m"; echo; exit ;;
	esac
	
	chmod +x $FILE
	bash $FILE