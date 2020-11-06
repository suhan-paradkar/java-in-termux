# Java(openjdk-11) in Termux
This script will install java(openjdk-11) in termux without root!!
Java libraries compiled and edited by **MrAdityaAlok**
- Author - [@MrAdityaAlok](https://github.com/MrAdityaAlok)
# Downloads Available for 
- aarch64
- arm64
- armhf
- armv7l
- arm/arm32
- **You may check your architecture by `uname -a` command**
# Installation
- `git clone https://github.com/MrAdityaAlok/java-in-termux.git`
- `cd java-in-termux`
- `chmod +x install.sh`
- `./install.sh`
- Your java will be installed, check it by running `java --version` command from terminal
- Package is a bit long  and needs constant internet for proper installation

# Uninstall
To uninstall : 
- remove either `openjdk-11.0.1` or `jdk-11.0.8-ojdkbuild-linux-armhf` (file depending on installation), from `HOME` directory

# Issues ??
Feel free to create an issue in github

# Note
- binary for arm32 is by [ojdkbuild](https://github.com/ojdkbuild/contrib_jdk11u-arm32-ci) which is under GNU GPL v. 2 with classpath exception
