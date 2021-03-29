[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FMrAdityaAlok%2Fjava-in-termux&count_bg=%2367CB1B&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=true)](https://hits.seeyoufarm.com)

# Hello, People,
Today I bring to you a script to install java in [Termux](https://termux.com) without root!

**Availability: openjdk-11.0.1 for 64-bit cpu's while only jdk-8 for 32-bit cpu's**

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
git clone https://github.com/suhan-paradkar/java-in-termux.git
cd java-in-termux
chmod +x install.sh
```
**and**

```
 ./install.sh
```
- Java will be installed, check it by running `java --version` command from terminal
- Package is about 200+MB(jdk11) or 80MB(jdk8) and needs constant internet for proper installation
- Restart termux after installation


# Note
- I have not compiled jdk, just wrote script
- Jdk 8 is by [Hax4us](https://github.com/Hax4us/java)
- Jdk 11 is from JVDroid app, with permission (GPL license)
