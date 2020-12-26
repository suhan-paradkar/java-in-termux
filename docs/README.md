[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FMrAdityaAlok%2Fjava-in-termux&count_bg=%2367CB1B&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=true)](https://hits.seeyoufarm.com)

# Hello👋, folks
Today I bring to you a script to install java in [Termux](https://termux.com) without root!

**Note: I have not compiled jdk, just wrote script.**

**Availability: openjdk-11.0.1/jdk-8 for 64-bit cpu's while only jdk-8 for 32-bit cpu's**

# Downloads Available for

- aarch64
- armv8
- arm64

_Note: all above cpu is 64-bit and uses same binary(jdk)_

- armhf
- armv7l
- arm/arm32/armv7/aarch32

_Note : all above cpu is 32-bit and uses same binary(jdk)_

- **You may check your architecture by `uname -a` command**

# Installation
```
git clone https://github.com/MrAdityaAlok/java-in-termux.git
cd java-in-termux
chmod +x install.sh
```
**To install jdk8 for 64-bit cpu's (cpu list above) use**
```
./install.sh  8
```
**else**

```
 ./install.sh
```
- Java will be installed, check it by running `java --version` command from terminal
- Package is a bit long and needs constant internet for proper installation
- Restart termux after installation

# Uninstall

To uninstall :

- remove either `openjdk-11.0.1` or `jdk8` file (depending on installation) from `$PREFIX/share` directory
- then edit `$HOME/.profile` file and remove lines containing:
```
export JAVA_HOME=/data/data/com.termux/files/usr/{either of above mentioned file}
```
 **and**
```
PATH=/data/data/com.termux/files/usr/share/{either of above mentioned file}/bin
```
- **after this Please restart termux**

# Support 

[Feel free to ask in **discussion**](https://github.com/MrAdityaAlok/java-in-termux/discussions)
# Note
- Jdk 8 is by [Hax4us](https://github.com/Hax4us/java), and of course I took the [permission](https://photos.app.goo.gl/8U76Lxapakn3ZQws6)
- Jdk 11 is from a telegram channel, which can be found [here](https://t.me/s/aide_mod)
