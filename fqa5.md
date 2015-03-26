[Index](fqa.md) [To Section 4 - 9front Installation Guide](fqa4.md) [To Section 6 - Networking](fqa6.md)

# 5 - Building the System from Source #

## Table of Contents ##
[5.1 - Why should I build my system from source?](fqa5#5.1_-_Why_should_I_build_my_system_from_source?.md)

[5.2 - Building 9front from source](fqa5#5.2_-_Building_9front_from_source.md)

[5.2.1 - Update sources](fqa5#5.2.1_-_Update_sources.md)

[5.2.1.1 - hgrc](fqa5#5.2.1.1_-_hgrc.md)

[5.2.2 - Building from source](fqa5#5.2.2_-_Building_from_source.md)

[5.2.2.1 - Cross compiling](fqa5#5.2.2.1_-_Cross_compiling.md)

[5.3 - Building an ISO](fqa5#5.3_-_Building_an_ISO.md)

[5.4 - Common Problems when Compiling and Building](fqa5#5.4_-_Common_Problems_when_Compiling_and_Building.md)

## 5.1 - Why should I build my system from source? ##
Some reasons why you might actually wish or need to build from source:

  * Updates have been committed since you performed the installation.

  * Test or develop new features.

## 5.2 - Building 9front from source ##
### 5.2.1 - Update sources ###
9front uses [hg(1)](http://man.aiju.de/1/hg) to synchronize the system with the [Google Code repository](http://code.google.com/p/plan9front/):
```
cd /
bind -ac /dist/plan9front /
hg incoming
hg -v pull -u
```

which is consolidated in the command:
```
sysupdate
```

If hg refuses to update due to conflicts (e.g. if you installed something locally which was later incorporated into 9front,) this is a quick workaround which discards local changes:
```
hg update -C --clean
```

After the tree is updated, recompile/build the updated programs as needed.

#### 5.2.1.1 - hgrc ####
To update when logged in as a user other than `glenda`, add the following to `$home/lib/hgrc`:
```
[trusted]
users=glenda
groups=glenda
```

### 5.2.2 - Building from source ###
<b>Note:</b> A minimum of 512MB RAM is needed to link some programs. If less than 512MB is available, be sure to turn on swap before building. See: [swap(8)](http://man.aiju.de/8/swap), [3.3 - What is an appropriate first system to learn 9front on?](fqa3#3.3_-_What_is_an_appropriate_first_system_to_learn_9front_on?.md)
```
# create any missing directories needed for the build
cd /
. /sys/lib/rootstub

# build everything
cd /sys/src
mk install
mk clean

# build manpage indices
cd /sys/man
mk

# build the papers and html (optional)
cd /sys/doc
mk
mk html
```

Build the kernel for 386:
```
cd /sys/src/9/pc
mk install
```

Build the kernel for amd64:
```
cd /sys/src/9/pc64
mk install
```

Build the kernel for Raspberry Pi:
```
cd /sys/src/9/bcm
mk install
```

See also: [How do I install a new kernel?](fqa7#7.2.5_-_How_do_I_install_a_new_kernel?.md)

#### 5.2.2.1 - Cross compiling ####
To cross compile, simply set the `objtype` environment variable prior to running the build. For example, to build all the amd64 binaries on a 386 system:

```
# create any missing directories needed for the build
cd /
. /sys/lib/rootstub
cd /sys/src
objtype=amd64 mk install
```

## 5.3 - Building an ISO ##
The 9front ISO is a livecd that also serves as install media.

<b>Note:</b> Currently, only the 386 architecture is built for the ISO. See: [8.9 - Bootstrapping architectures not included on the ISO](fqa8#8.9_-_Bootstrapping_architectures_not_included_on_the_ISO.md) for more information on booting other architectures.

```
# put your root filesystem into /n/src9
bind /root /n/src9

# put your hg repository there
bind -ac /dist/plan9front /n/src9

# build the iso
cd /sys/lib/dist
mk /tmp/9front.iso
```

## 5.4 - Common Problems when Compiling and Building ##
Most of the time, problems in the build process are caused by not following the above directions carefully.

[Index](fqa.md) [To Section 4 - 9front Installation Guide](fqa4.md) [To Section 6 - Networking](fqa6.md)