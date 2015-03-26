[Index](fqa.md) [To Section 6 - Networking](fqa6.md) [To Section 8 - Using 9front](fqa8.md)

# 7 - System Management #

## Table of Contents ##
[7.1 - Plan 9 Services Overview](fqa7#7.1_-_Plan_9_Services_Overview.md)

[7.1.1 - What is the kernel?](fqa7#7.1.1_-_What_is_the_kernel?.md)

[7.1.2 - What is the fileserver?](fqa7#7.1.2_-_What_is_the_fileserver?.md)

[7.1.3 - What is the auth server?](fqa7#7.1.3_-_What_is_the_auth_server?.md)

[7.1.4 - What is the cpu server?](fqa7#7.1.4_-_What_is_the_cpu_server?.md)

[7.1.5 - What is a terminal?](fqa7#7.1.5_-_What_is_a_terminal?.md)

[7.2 - Kernel configuration and maintenance](fqa7#7.2_-_Kernel_configuration_and_maintenance.md)

[7.2.1 - How do I mount the 9fat partition?](fqa7#7.2.1_-_How_do_I_mount_the_9fat_partition?.md)

[7.2.2 - How do I modify plan9.ini?](fqa7#7.2.2_-_How_do_I_modify_plan9.ini?.md)

[7.2.3 - Kernel configuration file](fqa7#7.2.3_-_Kernel_configuration_file.md)

[7.2.4 - Kernel drivers](fqa7#7.2.4_-_Kernel_drivers.md)

[7.2.5 - How do I install a new kernel?](fqa7#7.2.5_-_How_do_I_install_a_new_kernel?.md)

[7.3 - Fileserver configuration and maintenance](fqa7#7.3_-_Fileserver_configuration_and_maintenance.md)

[7.3.1 - Adding users](fqa7#7.3.1_-_Adding_users.md)

[7.3.2 - Configuring nvram](fqa7#7.3.2_-_Configuring_nvram.md)

[7.3.3 - Setting up a listener for network connections](fqa7#7.3.3_-_Setting_up_a_listener_for_network_connections.md)

[7.4 - Auth server configuration and maintenance](fqa7#7.4_-_Auth_server_configuration_and_maintenance.md)

[7.4.1 - Configuring an auth server](fqa7#7.4.1_-_Configuring_an_auth_server.md)

[7.4.1.1 - Avoiding an ndb entry for the auth server](fqa7#7.4.1.1_-_Avoiding_an_ndb_entry_for_the_auth_server.md)

[7.4.2 - Adding users](fqa7#7.4.2_-_Adding_users.md)

[7.5 - Cpu server configuration and maintenance](fqa7#7.5_-_Cpu_server_configuration_and_maintenance.md)

[7.5.1 - Configuring a cpu server](fqa7#7.5.1_-_Configuring_a_cpu_server.md)

[7.6 - Terminal configuration and maintenance](fqa7#7.6_-_Terminal_configuration_and_maintenance.md)

[7.6.1 - Configuring a terminal](fqa7#7.6.1_-_Configuring_a_terminal.md)

[7.6.2 - Configuring a Terminal to Accept cpu Connections](fqa7#7.6.2_-_Configuring_a_Terminal_to_Accept_cpu_Connections.md)

[7.6.3 - UTC Timesync](fqa7#7.6.3_-_UTC_Timesync.md)

[7.7 - Mail server configuration and maintenance](fqa7#7.7_-_Mail_server_configuration_and_maintenance.md)

[7.7.1 - smtpd.conf](fqa7#7.7.1_-_smtpd.conf.md)

[7.7.2 - rewrite](fqa7#7.7.2_-_rewrite.md)

[7.7.3 - names.local](fqa7#7.7.3_-_names.local.md)

[7.7.4 - remotemail](fqa7#7.7.4_-_remotemail.md)

[7.7.5 - SMTP over TLS](fqa7#7.7.5_-_SMTP_over_TLS.md)

[7.7.6 - IMAP4 over TLS](fqa7#7.7.6_-_IMAP4_over_TLS.md)

[7.8 - Web server configuration and maintenance](fqa7#7.8_-_Web_server_configuration_and_maintenance.md)

[7.8.1 - ip/httpd](fqa7#7.8.1_-_ip/httpd.md)

[7.8.2 - rc-httpd](fqa7#7.8.2_-_rc-httpd.md)

[7.9 - TLS certificates](fqa7#7.9_-_TLS_certificates.md)

## 7.1 - Plan 9 Services Overview ##
![http://doc.cat-v.org/plan_9/4th_edition/papers/network0.png](http://doc.cat-v.org/plan_9/4th_edition/papers/network0.png)

In order to be an effective system manager it is a good idea to understand how the system is designed, and how it is intended to be used.

Plan 9 services may be run on separate machines, all together on one machine, or in various combinations. The original design of Plan 9 assumed that each network service would run on separate hardware; by design, individual components of the system are generally unaware if they co-exist on the same machine or are distributed amongst separate machines.

See: [Designing Plan 9](http://doc.cat-v.org/plan_9/1st_edition/designing_plan_9), [Plan 9 From Bell Labs](http://doc.cat-v.org/plan_9/4th_edition/papers/9), [The Organization of Networks in Plan 9](http://doc.cat-v.org/plan_9/4th_edition/papers/net)

### 7.1.1 - What is the kernel? ###
The kernel is a service that provides processes and resources for users active on the current system. Every Plan 9 system boots a kernel.

At boot time the kernel takes on the identify of `$user` (the user who logs in at the console), which becomes the `hostowner` of the system. The `hostowner` in turn 1.) controls access to the kernel's resources, 2.) serves as the auth identity (`authid`) of the machine and the services it provides.

<b>Note:</b> The `hostowner` differs from the concept of `root` on a UNIX system, where a single user `root` may take control of all processes _and_ files on the system. By contrast, even the `hostowner` of a Plan 9 fileserver cannot violate file permissions on the fileserver, except when permissions checking is disabled on the console or when entering special commands at the console of the fileserver. The `hostowner` controls only the _processes_ running on the local machine. This fundamental separation between control of processes and file permissions is exploited throughout the system, but can be confusing for users coming from a UNIX background.

### 7.1.2 - What is the fileserver? ###
In a traditional Plan 9 network there is one fileserver, typically the only machine with a physical hard disk, that serves files to all other machines on the network. In most cases, other machines are either diskless or only use their disks for local caching. In modern Plan 9, the fileserver typically runs with `service=cpu` in `plan9.ini`, and runs the `/rc/bin/cpurc` script at boot time. It stores its authid/authdom/secstore/password in a file `/dev/sdXX/nvram`, which corresponds with the values for that user (the `authid`) held by the auth server. Users seeking access to the fileserver must be added as a user on the file system itself, and, if auth is enabled, added to the auth server's user database.

9front supports two different file systems for use on the fileserver: cwfs and hjfs. Cwfs is a userspace port of Ken Thompson's original Plan 9 fileserver, which originally ran a unique kernel and _only_ served files. Hjfs is a new, experimental fileserver that stores both the cache and worm on a single partition (and thus requires less disk space to be used effectively).

See: [The Plan 9 File Server](http://doc.cat-v.org/plan_9/4th_edition/papers/fs) (deprecated, but partially applies to cwfs), [cwfs(4)](http://man.aiju.de/4/cwfs) and [hjfs(4)](http://man.aiju.de/4/hjfs)

### 7.1.3 - What is the auth server? ###
The auth server manages authentication for an entire Plan 9 network. It runs with `service=cpu` in `plan9.ini`, and runs the `/rc/bin/cpurc` script at boot time. When a disk is present, it stores its authid/authdom/secstore/password in a file  `/dev/sdXX/nvram`. If no `nvram` is found, the `auth/wrkey` command is run at boot time.

<b>Note:</b> The [cron(8)](http://man.aiju.de/8/cron) service should be run only on the auth server, where it can authenticate itself to access any of the other machines on the network.

See: [Security in Plan 9](http://doc.cat-v.org/plan_9/4th_edition/papers/auth) and [auth(8)](http://man.aiju.de/8/auth)

### 7.1.4 - What is the cpu server? ###
The cpu server is used for remote computation. It runs with `service=cpu` in `plan9.ini`, and runs the `/rc/bin/cpurc` script at boot time. When a disk is present, it stores its authid/authdom/secstore/password in a file `/dev/sdXX/nvram`, which corresponds with the values for that user (the `authid`) held by the auth server. If no `nvram` is found, the `auth/wrkey` command is run at boot time. Users seeking access to a cpu server must first be added on the file system of the cpu server's corresponding fileserver (for permission to access and modify files) as well as the user database of its auth server (for login authentication). In practice, the fileserver and auth server (and even some terminals) will often run cpu listeners to enable remote command line access.

The common use case for a cpu server is to execute programs compiled for a different architecture than that of the terminal, or to execute programs closer to the data they are operating on (for example, if the terminal is running over a slow link but the cpu server is on the same ethernet segment as the fileserver). In the early days of Plan 9, a cpu server was often significantly more powerful than the (often, special-purpose) hardware used for diskless terminals. Today, terminals are typically powerful computers in their own right, and the need for a separate machine running only as a cpu server is less common. That said, it can be useful to execute unstable or unpredictable programs on a separate machine so that rebooting does not affect one's immediate workspace environment -- especially when testing new code.

See: [The Organization of Networks in Plan 9](http://doc.cat-v.org/plan_9/4th_edition/papers/net/), [cpu(1)](http://man.aiju.de/1/cpu) and [exportfs(4)](http://man.aiju.de/4/exportfs)

### 7.1.5 - What is a terminal? ###
The terminal is the machine at which the Plan 9 user is most often physically located. Usually diskless, it runs with `service=terminal` in `plan9.ini` and executes the `/rc/bin/termrc` script at boot time. Terminal users who do not run stand alone machines or who wish to access Plan 9 network resources must first be added to the file system of the network's fileserver and to the user database of the network's auth server.

<b>Note:</b> Many Plan 9 users run stand alone systems that operate -- effectively -- as a combined terminal and fileserver. For example, inside a virtual machine such as qemu, or booted from hard disk on a laptop. In this case the Plan 9 network is entirely self-contained, running one kernel on one machine, which renders auth and cpu services superfluous. This configuration trades some of the inherent security of separate hardware and kernel boundaries for the convenience of combining the whole system into a single, bootable instance.

## 7.2 - Kernel configuration and maintenance ##
### 7.2.1 - How do I mount the 9fat partition? ###
9front has done away with the scripts `9fat:`, `c:`, and so forth, that are found in the [Bell Labs Plan 9 distribution](http://plan9.bell-labs.com/plan9). Instead, use the `9fs` script to mount the 9fat partition:
```
9fs 9fat
```

If you are not at the console, or if `#S` has not already been bound over `/dev`:
```
bind -b '#S' /dev # bind the local hard drive kernel device over /dev
9fs 9fat /dev/sdXX/9fat # specify the full path to the corresponding 9fat
```

<b>Note:</b> `9fs 9fat` posts a file descriptor in `/srv/dos`. If this file already exists and is already in use, `9fs 9fat` will fail. If no other process is using the file it is safe to simply remove it and run `9fs 9fat` again.

See also: [dossrv(4)](http://man.aiju.de/4/dossrv)

### 7.2.2 - How do I modify plan9.ini? ###
Mount the `9fat` partition and then edit the file `/n/9fat/plan9.ini`.

<b>Note:</b> The file must end with a newline.

See: [plan9.ini(8)](http://man.aiju.de/8/plan9.ini).

### 7.2.3 - Kernel configuration file ###
Kernel configuration files are stored in the kernel directory and share the name of the kernel to which they apply. For example, the configuration file for the `pcf` kernel is `/sys/src/9/pc/pcf`.

### 7.2.4 - Kernel drivers ###
Kernel driver source files are located in the kernel source directory.

### 7.2.5 - How do I install a new kernel? ###
First, build the new kernel(s).

For 386:
```
cd /sys/src/9/pc
mk install # kernel
```

For amd64:
```
cd /sys/src/9/pc64
mk install # kernel
```

Next, install the new bootloader and kernels into the `9fat` partition. <b>Note:</b> The bootloader needs to be continuous on disk, so simply copying over the original file does not produce the desired effect. Instead:
```
9fs 9fat
rm /n/9fat/9bootfat
cp /386/9bootfat /n/9fat/
chmod +al /n/9fat/9bootfat # defrag magic
```

then copy the desired kernels:
For 386:
```
cp /386/9pcf /n/9fat/
```

For amd64:
```
cp /amd64/9pc64 /n/9fat/
```

## 7.3 - Fileserver configuration and maintenance ##
### 7.3.1 - Adding users ###
Add a new user on the file server:

For cwfs:
```
echo newuser username >>/srv/cwfs.cmd
```

For hjfs:
```
echo newuser username >>/srv/hjfs.cmd
```

If needed, make the new user a member of the upas (email) group:

For cwfs:
```
echo newuser upas +username >>/srv/cwfs.cmd
```

For hjfs:
```
echo newuser upas +username >>/srv/hjfs.cmd
```

In all cases, the fileserver's user database is stored in `/adm/users`. Examine this file, and the contents of the `/usr` directory, to evaluate success.

<b>Note:</b> It is also possible to access the control file interactively by running the command:

```
con -C /srv/cwfs.cmd
```

From here commands may be entered directly.

Type `Ctrl-\` to resume the `con` prompt, followed by `q` to quit.

The `newuser` filesystem command is described in the man pages [fs(8)](http://man.aiju.de/8/fs) (for cwfs) and [hjfs(8)](http://man.aiju.de/8/hjfs).

<b>Note:</b> New users are created without a profile, mail directory, tmp directory (needed to edit files with `sam`) or other confections. To install a default profile for a new user, upon first login as that user, run:
```
. /sys/lib/newuser
```
then edit `/usr/username/lib/profile` to your own specifications.

### 7.3.2 - Configuring nvram ###
The cpu kernel checks the `nvram` file for valid auth credentials and attempts to copy them into `factotum` so that the machine may boot without manual intervention. To configure the `nvram`, run the command `auth/wrkey`, which will prompt for an `authid`, `authdom`, `secstore key`, and `password`. The `authid` is the `hostowner` of the machine and should be a valid user that has already been (or will be) added to the corresponding auth server, in this case `glenda`. The `authdom` is the authentication domain for the machine, in this case `inri`. The `secstore key` and `password` are secret passwords of eight characters or more in length. The `password` is the password belonging to the `authid` user on the auth server responsible for the `authdom` entered above. The `secstore key` is the password of the user on the secure-store server (explanation of which is beyond the scope of this section, see: [secstore(1)](http://man.aiju.de/1/secstore) and [secstore(8)](http://man.aiju.de/8/secstore)).

Run the command `auth/wrkey`:
```
bad nvram key
bad authentication id
bad authentication domain
authid: glenda
authdom: inri
secstore key: [glenda's password]
password: [glenda's password]
```

<b>Note:</b> Booting the file system with authentication enabled and an invalid `nvram` file will cause `auth/wrkey` to be run at startup.

See: [auth(8)](http://man.aiju.de/8/auth)

### 7.3.3 - Setting up a listener for network connections ###
In order for remote machines to mount the file system of the fileserver it must first be running a network listener.

The first step is to switch from the terminal service to the cpu service by editing the `service` line in in `/n/9fat/plan9.ini`:
```
service=cpu
```

See: [7.2.2 - How do I modify plan9.ini?](fqa7#7.2.2_-_How_do_I_modify_plan9.ini?.md)

Before rebooting, configure the nvram: [7.3.2 - Configuring nvram](fqa7#7.3.2_-_Configuring_nvram.md). This allows the machine to load auth credentials from the `nvram` file into `factotum` without manual intervention.

Reboot:
```
fshalt -r
```

The next step (on cwfs; not needed on hjfs) is to enable auth on the fileserver, to prevent unauthorized users from accessing the disk over the network. At the `bootargs` prompt, retype the default and add the `-c` flag to enter the fileserver's config mode. At the `config` prompt, type `noauth` twice to toggle  authentication on the file server. Finally, type `end` to continue with the boot process:
```
bootargs is (tcp, local!device) [local!/dev/sdXX/fscache] local!/dev/sdXX/fscache -c
config: noauth
auth is now disabled
config: noauth
auth is now enabled
config: end
```

The machine will now continue to boot.

Once booted, the next step is to configure the fileserver to listen for connections from remote hosts. Modify the `bootargs` of the fileserver in `/n/9fat/plan9.ini`:

For `cwfs`:
```
bootargs=local!/dev/sdXX/fscache -a tcp!*!564
```

For `hjfs`:
```
bootargs=local!/dev/sdXX/fs -m 702 -A -a tcp!*!564
```

Reboot the fileserver:
```
fshalt -r
```

When the system finishes booting it should now be listening for network connections to the file system. Users who have been added to the fileserver and the auth server should now be able to authenticate and mount the fileserver (tcp boot, etc.).

See: [cwfs(4)](http://man.aiju.de/4/cwfs), [hjfs(4)](http://man.aiju.de/4/hjfs), [6.7.1 - How do I tcp boot?](fqa6#6.7.1_-_How_do_I_tcp_boot?.md)

## 7.4 - Auth server configuration and maintenance ##
### 7.4.1 - Configuring an auth server ###
The auth server should be booted with `service=cpu` in `plan9.ini` and `ndb` modified to associate the new auth server with the desired `authdom`.

If the cpu server machine boots from a local disk, edit the `service` line in in `/n/9fat/plan9.ini`:
```
service=cpu
```

See: [7.2.2 - How do I modify plan9.ini?](fqa7#7.2.2_-_How_do_I_modify_plan9.ini?.md)

If the machine boots via PXE, edit the `service` line in in the file under `/cfg/pxe/` that correspondes to its MAC address (in this case `/cfg/pxe/000c292fd30c`):
```
service=cpu
```

<b>Note:</b> The contents of `/cfg/pxe/000c292fd30c` serves as the equivalent of `plan9.ini` for the PXE booted machine. Any other settings that would normally be configured in `plan9.ini` may also be entered there.

Next, `ndb` must be modified to associate the new auth server with the desired `authdom`. Assuming the auth server has a MAC address of `00:0c:29:2f:d3:0c`, an IP address of `192.168.0.2` and a default gateway/DNS server of `192.168.0.1` that are all on the Class C network `192.168.0.0/24`, and the `authdom` is `9front`, edit `/lib/ndb/local` and add the `authdom` and the auth server's IP under the corresponding `ipnet`:
```
ipnet=9front ip=192.168.0.0 ipmask=255.255.255.0
	ipgw=192.168.0.1
	auth=192.168.0.2 # add auth server's ip
	authdom=9front # add authdom
	fs=192.168.0.3
	cpu=192.168.0.4
	dns=192.168.0.1
	dnsdom=9front
	smtp=192.168.0.4
```

See: [ndb(6)](http://man.aiju.de/6/ndb)

Before rebooting, configure the nvram: [7.3.2 - Configuring nvram](fqa7#7.3.2_-_Configuring_nvram.md). This allows the machine to load auth credentials from the `nvram` file into `factotum` without manual intervention.

<b>Note:</b> If the auth server's `hostowner` (referred to as `authid` in the `auth/wrkey` dialogue) will be any other user than the default `glenda`, that user must be authorized (in the auth context) to "speak for" other users. Assuming a hostowner of `sl`, add a rule to `/lib/ndb/auth`:

```
hostid=sl
	uid=!sys uid=!adm uid=*
```

See: [auth(8)](http://man.aiju.de/8/auth)

Reboot:
```
fshalt -r
```

At boot time, the shell script `/rc/bin/cpurc` consults `ndb` to determine if the machine is an auth server. If it is, the script will launch the `keyfs` process and start listeners for auth connections. If, after booting,  `keyfs` is not running, something went wrong.

#### 7.4.1.1 - Avoiding an ndb entry for the auth server ####
If an auth server for a given `authdom` is not found in the local `ndb`, then the `authdial()` function from the `libauthsrv` library (used for resolving auth servers) will default to the dns host name `p9auth.example.com`, where `p9auth` is the subdomain, and `example.com` is the authdom. This convention (where followed) is useful to avoid having to manually add auth server information for arbitrary remote networks to the local `ndb`.

### 7.4.2 - Adding users ###
To add a new user to the auth server, login as the auth server's `hostowner`, make sure `auth/keyfs` is running in your namespace, and then set an auth password for the user:
```
auth/changeuser username
```

See: [auth(8)](http://man.aiju.de/8/auth), [keyfs(4)](http://man.aiju.de/4/keyfs).

## 7.5 - Cpu server configuration and maintenance ##
### 7.5.1 - Configuring a cpu server ###
<b>Note:</b> Operating a cpu server requires auth services. See: [FQA section 7.4 - Auth server configuration and maintenance](fqa7#7.4_-_Auth_server_configuration_and_maintenance.md).

The first step is to switch from the `terminal` service to the `cpu` service.

If the cpu server machine boots from a local disk, edit the `service` line in in `/n/9fat/plan9.ini`:
```
service=cpu
```

See: [7.2.2 - How do I modify plan9.ini?](fqa7#7.2.2_-_How_do_I_modify_plan9.ini?.md)

If the machine boots via PXE, edit the `service` line in in the file under `/cfg/pxe/` that correspondes to its MAC address (in this case `/cfg/pxe/000c292fd30c`):
```
service=cpu
```

<b>Note:</b> The contents of `/cfg/pxe/000c292fd30c` serves as the equivalent of `plan9.ini` for the PXE booted machine. Any other settings that would normally be configured in `plan9.ini` may also be entered here.

Setting `service=cpu` causes the shell script `/rc/bin/cpurc` to be run at boot time, which in turn launches a listener that scans the `/rc/bin/service` directory for scripts corresponding to various network ports (see: [listen(8)](http://man.aiju.de/8/listen)). The script `tcp17010` handles incoming cpu connections. Authentication for incoming cpu connections is performed by the auth server associated with the `authdom` by `ndb` (see: [7.4.1 - Configuring an auth server](fqa7#7.4.1_-_Configuring_an_auth_server.md)).

Before rebooting, configure the nvram: [7.3.2 - Configuring nvram](fqa7#7.3.2_-_Configuring_nvram.md). This allows the machine to load auth credentials from the `nvram` file into `factotum` without manual intervention.

Reboot:
```
fshalt -r
```

See also: [7.6.2 - Configuring a Terminal to Accept cpu Connections](fqa7#7.6.2_-_Configuring_a_Terminal_to_Accept_cpu_Connections.md)

## 7.6 - Terminal configuration and maintenance ##
### 7.6.1 - Configuring a terminal ###
The 9front ISO boots into a livecd running the `9pcf` kernel, resulting in the simplest form of terminal running on the 386 architecture. A terminal may also be network booted (the preferred method) or installed to its own stand-alone file system on a local storage device.

See: [6.7 - How do I boot from the network?](fqa6#6.7_-_How_do_I_boot_from_the_network?.md)

### 7.6.2 - Configuring a Terminal to Accept cpu Connections ###
If the `hostowner` factotum has been loaded with the appropriate key and the system is listening for `cpu` connections, a user may `cpu` into a terminal that is not running auth services. To configure a terminal to accept `cpu` connections in this fashion, substitute your choice of `dom` (this refers to the `authdom`), `user` and `password`, below:
```
echo 'key proto=p9sk1 dom=inri user=glenda !password=p@ssw0rd' >/mnt/factotum/ctl
aux/listen1 -t tcp!*!17010 /bin/cpu -R &
```

### 7.6.3 - UTC Timesync ###
By default, `/rc/bin/termrc` sets `TIMESYNCARGS=(-rLa1000000)`, to synchronize 9front time with the real time clock. On many systems this time is saved as UTC, whereas Windows keeps the local time there. If your time is in UTC you should omit the -L:
Put `TIMESYNCARGS=(-ra1000000)` into `/rc/bin/termrc.local`, which gets included by `/rc/bin/termrc`.

## 7.7 - Mail server configuration and maintenance ##
![http://9front.org/img/upas.gif](http://9front.org/img/upas.gif)

Incoming and outgoing mail is handled by [upas](http://doc.cat-v.org/bell_labs/upas_mail_system/) and its related suite of programs. Configuration is handled by a number of files located in `/mail/lib/`.

<b>Note:</b> Be sure to configure proper DNS entries for your domains. If Plan 9 will host your DNS, see: [FQA section 6.2.5.2 - DNS authoritative name server](fqa6#6.2.5.2_-_DNS_authoritative_name_server.md)

See: [Upas - A Simpler Approach to Network Mail](http://doc.cat-v.org/bell_labs/upas_mail_system/), [mail(1)](http://man.aiju.de/1/mail)

### 7.7.1 - smtpd.conf ###
Some changes to the default `smtpd.conf` are required to accept mail for Internet domain names and to send mail for other hosts. The following lines should be changed to correspond to your network:

```
defaultdomain		9front.org # outgoing mail will be sent from this domain by default
norelay			on	# do not be an open relay
verifysenderdom		off	# disable dns verification of sender domain
saveblockedmsg		off	# save blocked messages

# if norelay is on, you need to set the
# networks allowed to relay through 
# as well as the domains to accept mail for
ournets 199.191.58.37/32 199.191.58.42/32 199.241.189.110/32 192.168.4.0/24

# domain names for which incoming mail is accepted
ourdomains 9front.org, bell-labs.co, cat-v.org
```

Example file: [smtpd.conf](http://plan9.stanleylieber.com/mail/lib/smtpd.conf)

See also: [smtpd(6)](http://man.aiju.de/6/smtpd), [smtp(8)](http://man.aiju.de/8/smtp)

### 7.7.2 - rewrite ###
To act as an Internet mail server, copy `rewrite.direct` to `rewrite` and modify accordingly:

```
# case conversion for postmaster
pOsTmAsTeR	alias		postmaster

# local mail
\l!(.*)		alias		\1
(ttr|9front.org|bell-labs.co|cat-v.org)!(.*)	alias		\2
[^!@]+		translate	"/bin/upas/aliasmail '&'"
local!(.*)	>>		/mail/box/\1/mbox

# we can be just as complicated as BSD sendmail...
# convert source domain address to a chain a@b@c@d...
@([^@!,]*):([^!@]*)@([^!]*)	alias	\2@\3@\1
@([^@!]*),([^!@,]*):([^!@]*)@([^!]*)	alias	@\1:\3@\4@\2

# convert a chain a@b@c@d... to ...d!c!b!a
([^@]+)@([^@]+)@(.+)	alias	\2!\1@\3
([^@]+)@([^@]+)		alias	\2!\1

# /mail/lib/remotemail will take care of gating to systems we don't know
([^!]*)!(.*) 		| 		"/mail/lib/qmail '\s' 'net!\1'" "'\2'"
```

Example file: [rewrite](http://plan9.stanleylieber.com/mail/lib/rewrite)

See also: [rewrite(6)](http://man.aiju.de/6/rewrite)

### 7.7.3 - names.local ###
To map incoming e-mail addresses to local usernames, edit `names.local` accordingly:

```
# postmaster goes to glenda
postmaster	glenda
```

<b>Note:</b> <i>postmaster</i>`@[any domain]` will be delivered to local user `glenda`.

Example file: [names.local](http://plan9.stanleylieber.com/mail/lib/names.local)

### 7.7.4 - remotemail ###
Finally, `upas` needs to know what to do with mail that cannot be delivered locally. Edit `remotemail` and enter the desired behavior.

To deliver mail directly to the remote server responsible for the domain name in question:
```
#!/bin/rc
shift
sender=$1
shift
addr=$1
shift
exec /bin/upas/smtp $addr $sender $*
```

Example file: [remotemail](http://plan9.stanleylieber.com/mail/lib/remotemail)

See also: [smtp(8)](http://man.aiju.de/8/smtp)

### 7.7.5 - SMTP over TLS ###
First, make sure you have already [created TLS certificates](fqa7#7.9_-_TLS_certificates.md) for your server.

Next, create a file `/rc/bin/service/tcp587`:

```
#!/bin/rc
user=`{cat /dev/user}
exec /bin/upas/smtpd -c /sys/lib/tls/cert -e -n $3
# to use with listen1, change $3 to $net
```

### 7.7.6 - IMAP4 over TLS ###
First, make sure you have already [created TLS certificates](fqa7#7.9_-_TLS_certificates.md) for your server.

Next, create a file `/rc/bin/service/tcp993`:

```
#!/bin/rc
exec tlssrv -c/sys/lib/tls/cert -limap4d -r`{cat $3/remote} /bin/ip/imap4d -p -r`{cat $3/remote} >>[2]/sys/log/imap4d
# to use with listen1, change $3 to $net
```

## 7.8 - Web server configuration and maintenance ##
### 7.8.1 - ip/httpd ###
No.

### 7.8.2 - rc-httpd ###
The `rc-httpd` web server is a simple shell script that handles static files, directory listings and drop-in CGI programs such as the [werc anti-framework](http://werc.cat-v.org). `rc-httpd` is run from a file in the directory scanned by [listen(8)](http://man.aiju.de/8/listen), or called as an argument to [listen1(8)](http://man.aiju.de/8/listen).

See: [rc-httpd(8)](http://man.aiju.de/8/rc-httpd)

## 7.9 - TLS certificates ##
To use TLS-enabled services on a Plan 9 mail server (poptls, apoptls, imaps, etc.) you need to generate a certificate and key for your mail server and tell the `factotum` of the server about that key.

The recommended method is to store the server's key in `secstore` (see [secstore(1)](http://man.aiju.de/1/secstore) and [secstore(8)](http://man.aiju.de/8/secstore)), which is in turn loaded into `factotum` at boot time, never writing it to disk.

It is also possible to store the key on disk:
```
ramfs -p
cd /tmp
auth/rsagen -t 'service=tls role=client owner=*' > key
chmod 600 key
cp key /sys/lib/tls/
```

To load the key stored on disk into the server's `factotum` at boot time, add the following line to `/cfg/$sysname/cpustart`:
```
cat /sys/lib/tls/key >>/mnt/factotum/ctl
```

The create the server certificate:
```
auth/rsa2x509 'C=FR CN=*.fakedom.dom' /sys/lib/tls/key | auth/pemencode CERTIFICATE > /sys/lib/tls/cert
```

where FR is a two digit country code, and fakedom.dom is the fully qualified
domainname.)



[Index](fqa.md) [To Section 6 - Networking](fqa6.md) [To Section 8 - Using 9front](fqa8.md)