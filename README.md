# Java(openjdk-11) in Termux
This script will install java(openjdk-11) in termux without root!!
- Author - [@MrAdityaAlok](https://github.com/MrAdityaAlok)
# Downloads Available for 
- aarch64
- arm64
- armhf
- armv7l
- arm/arm32
**You may check your architecture by `uname -a` command**
# Installation
- `git clone https://github.com/MrAdityaAlok/openjdk-in-termux.git`
- `cd openjdk-in-termux`
- `chmod +x install.sh`
- `./install.sh`
- Your java will be installed, check it by running `java --version` command from terminal
- Package is a bit long  and needs constant internet for proper installation

# Uninstall
To uninstall follow these instructions 
- `rm -rf $PREFIX/share/openjdk-11`
- edit file `$HOME/.profile` and remove the following lines 
- `export JAVA_HOME=$PREFIX/share/openjdk-11` **and**
- `PATH=$PATH:$PREFIX/share/openjdk-11/bin`

# Issues ??
Feel free to create an issue in github

# Note
- binary for arm32 is by [ojdkbuild](https://github.com/ojdkbuild/contrib_jdk11u-arm32-ci) which is under GNU GPL v. 2 with classpath exception
