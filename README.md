# Java (openjdk) in Termux        [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FMrAdityaAlok%2Fjava-in-termux&count_bg=%2367CB1B&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=true)](https://hits.seeyoufarm.com)
Hello folks, this script will install java(openjdk) in termux without root!

**Note: openjdk-11.0.1 for 64-bit cpu while openjdk-8 for 32-bit cpu**

# Downloads Available for 
- aarch64
- armv8
- arm64

*Note : all above cpu is 64-bit and uses same binary(jdk)*

- armhf
- armv7l
- arm/arm32/armv7/aarch32

*Note : all above cpu is 32-bit and uses same binary(jdk)*

- **You may check your architecture by `uname -a` command**

# Installation
- `git clone https://github.com/MrAdityaAlok/java-in-termux.git`
- `cd java-in-termux`
- `chmod +x install.sh`
- `./install.sh`
- Java will be installed, check it by running `java --version` command from terminal
- Package is a bit long  and needs constant internet for proper installation
- Restart termux after installation

# Uninstall

To uninstall : 
- remove either `openjdk-11.0.1` or `jdk8` file (depending on installation) from `$PREFIX/share` directory
- then edit `$HOME/.profile` file and remove lines containing:
- `export JAVA_HOME=/data/data/com.termux/files/usr/{*either of above mentioned file*}` **and**
- `PATH=/data/data/com.termux/files/usr/share/{*either of above mentioned file*}/bin`
- **after all this Please restart termux**

# Support
[Feel free to ask in **discussion**](https://github.com/MrAdityaAlok/java-in-termux/discussions)

