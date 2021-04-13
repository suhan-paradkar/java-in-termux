[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fsuhan-paradkar%2Fjava-in-termux&count_bg=%2367CB1B&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=true)](https://hits.seeyoufarm.com)

# Hello People,
Today I bring to you a script to install java in [Termux](https://termux.com) without root!

**Availability: openjdk-11.0.1 and openjdk8 for 64-bit cpu's while only jdk-8 for 32-bit cpu's. 64-bit cpu can opt partial ar full version**

# Downloads Available for

- aarch64
- armv8
- arm64

_Note: all above cpu is 64-bit and uses same binary(jdk)_

- armhf
- armv7l
- arm/arm32/armv7/aarch32
- armv8l

_Note : all above cpu except armv8l is 32-bit and uses same binary(jdk). armv8l is 64-bit but acts like 32-bit, hence jdk8_

_JDK8 May be buggy... Help is required to resolve bugs... JDK11 is tested...so 64 bit machines are lucky_

- **You may check your architecture by `uname -a` command**

# Installation
```
git clone https://github.com/suhan-paradkar/java-in-termux.git
cd java-in-termux
chmod +x install.sh
```
**and**

```
  bash install.sh
```
- Java will be installed, check it by running `java --version` command from terminal
- Package is about 200+MB(jdk11), 70MB(jdk8) or just 20MB (incase of partial installation for 64-bit cpus) and needs constant internet for proper installation
- Restart termux after installation


# Note
- I have not compiled jdk, just wrote script
- Jdk 8 is by [Hax4us](https://github.com/Hax4us/java) , compiled by me.
- Jdk 11(partial) is from JVDroid app.
- Jdk 11 is from Lzhiyong's repo [Termux-ndk](https://github.com/Lzhiyong/termux-ndk/tree/master/openjdk-build)
