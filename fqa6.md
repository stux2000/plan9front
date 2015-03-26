[Index](fqa.md) [To Section 5 - Building the System from Source](fqa5.md) [To Section 7 - System Management](fqa7.md)

# 6 - Networking #

## Table of Contents ##
[6.1 - Before we go any further](fqa6#6.1_-_Before_we_go_any_further.md)

[6.2 - Network configuration](fqa6#6.2_-_Network_configuration.md)

[6.2.1 - Host name](fqa6#6.2.1_-_Host_name.md)

[6.2.2 - Identifying and setting up your network interfaces](fqa6#6.2.2_-_Identifying_and_setting_up_your_network_interfaces.md)

[6.2.2.1 - Wifi](fqa6#6.2.2.1_-_Wifi.md)

[6.2.2.1.1 - wavelan](fqa6#6.2.2.1.1_-_wavelan.md)

[6.2.2.1.2 - wavelanpci](fqa6#6.2.2.1.2_-_wavelanpci.md)

[6.2.2.1.3 - iwl](fqa6#6.2.2.1.3_-_iwl.md)

[6.2.2.1.4 - rt2860](fqa6#6.2.2.1.4_-_rt2860.md)

[6.2.2.1.5 - WPA](fqa6#6.2.2.1.5_-_WPA.md)

[6.2.2.1.6 - Wifi Roaming](fqa6#6.2.2.1.6_-_Wifi_Roaming.md)

[6.2.2.1.7 - Wifi Debug](fqa6#6.2.2.1.7_-_Wifi_Debug.md)

[6.2.3 - IP address](fqa6#6.2.3_-_IP_address.md)

[6.2.4 - Default gateway](fqa6#6.2.4_-_Default_gateway.md)

[6.2.5 - DNS Resolution](fqa6#6.2.5_-_DNS_Resolution.md)

[6.2.5.1 - Caching DNS server](fqa6#6.2.5.1_-_Caching_DNS_server.md)

[6.2.5.2 - DNS authoritative name server](fqa6#6.2.5.2_-_DNS_authoritative_name_server.md)

[6.2.6 - Network-wide configuration](fqa6#6.2.6_-_Network-wide_configuration.md)

[6.2.6 - Activating the changes](fqa6#6.2.7_-_Activating_the_changes.md)

[6.2.8 - Verifying network settings](fqa6#6.2.8_-_Verifying_network_settings.md)

[6.2.8.1 - Checking routes](fqa6#6.2.8.1_-_Checking_routes.md)

[6.2.8.1.1 - Adding static routes](fqa6#6.2.8.1.1_-_Adding_static_routes.md)

[6.2.9 - Setting up your 9front box as a forwarding gateway](fqa6#6.2.9_-_Setting_up_your_9front_box_as_a_forwarding_gateway.md)

[6.2.10 - Setting up aliases on an interface](fqa6#6.2.10_-_Setting_up_aliases_on_an_interface.md)

[6.3 - How do I filter and firewall with 9front?](fqa6#6.3_-_How_do_I_filter_and_firewall_with_9front?.md)

[6.4 - Dynamic Host Configuration Protocol (DHCP)](fqa6#6.4_-_Dynamic_Host_Configuration_Protocol_(DHCP).md)

[6.4.1 - DHCP client](fqa6#6.4.1_-_DHCP_client.md)

[6.4.2 - DHCP server](fqa6#6.4.2_-_DHCP_server.md)

[6.5 - PPP](fqa6#6.5_-_PPP.md)

[6.6 - Setting up a network bridge in 9front](fqa6#6.6_-_Setting_up_a_network_bridge_in_9front.md)

[6.7 - How do I boot from the network?](fqa6#6.7_-_How_do_I_boot_from_the_network?.md)

[6.7.1 - How do I tcp boot?](fqa6#6.7.1_-_How_do_I_tcp_boot?.md)

[6.7.1.1 - Passing arguments to ipconfig at the bootargs prompt](fqa6#6.7.1.1_-_Passing_arguments_to_ipconfig_at_the_bootargs_prompt.md)

[6.7.2 - How do I boot using PXE?](fqa6#6.7.2_-_How_do_I_boot_using_PXE?.md)

## 6.1 - Before we go any further ##
Plan 9's approach to networking is unusual. For the bulk of this document, it helps if you have read and at least partially understood FQA section [0.1 - What is Plan 9?](fqa0#0.1_-_What_is_Plan_9?.md).

See also: [The Organization of Networks in Plan 9](http://doc.cat-v.org/plan_9/4th_edition/papers/net/).

If you are working with applications such as web servers, FTP servers, and mail servers, you may benefit greatly by [reading the RFCs](http://www.rfc-editor.org/rfc.html). Most likely, you can't read all of them. Pick some topics that you are interested in, or that you use in your network environment. Look them up, find out how they are intended to work. The RFCs define many (thousands of) standards for protocols on the Internet and how they are supposed to work.

**Note:** A script for downloading all the RFCs is located in `/lib/rfc/grabrfc`. It may take hours for the script to run to completion.

## 6.2 - Network configuration ##
Normally, networking is initially configured by the installation process. However, it is good to understand what is happening in this process and how it works. In Plan 9, network configuration is organized in `ndb`, the network database.

From [ndb(6)](http://man.aiju.de/6/ndb):
```
The network database consists of files describing machines
known to the local installation and machines known publicly.
The files comprise multi-line tuples made up of
attribute/value pairs of the form attr=value or sometimes
just attr. Each line starting without white space starts a
new tuple.  Lines starting with # are comments.

The file /lib/ndb/local is the root of the database.  Other
files are included in the database if a tuple with an
attribute-value pair of attribute database and no value
exists in /lib/ndb/local.  Within the database tuple, each
pair with attribute file identifies a file to be included in
the database.  The files are searched in the order they
appear.  For example:

     database=
          file=/lib/ndb/common
          file=/lib/ndb/local
          file=/lib/ndb/global

declares the database to be composed of the three files
/lib/ndb/common, /lib/ndb/local, and /lib/ndb/global.  By
default, /lib/ndb/local is searched before the others.  How-
ever, /lib/ndb/local may be included in the database to
redefine its ordering.

Within tuples, pairs on the same line bind tighter than
pairs on different lines.
```

### 6.2.1 - Host name ###
Each machine on the network receives a corresponding section in `ndb`. The host name (hereafter referred to as `sysname`) is assigned by setting the `sys=` tuple:

```
sys=x301
```

The resulting `sysname` is used by the `/rc/bin/termrc` and `/rc/bin/cpurc` startup scripts, which in turn call upon any additional configuration that may exist in `/cfg/$sysname/`. (Look at the scripts to see how they deal with /cfg.)

### 6.2.2 - Identifying and setting up your network interfaces ###
Network interfaces are recognized by their MAC addresses, which are identified to `ndb` using the `ether=` tuple:

```
sys=x301 ether=00226811f7dd
```

Additional tuples in the same grouping will be used to configure the interface in question.

#### 6.2.2.1 - Wifi ####
The following sections provide information pertaining to specific chipsets.

See [plan9.ini(8)](http://man.aiju.de/8/plan9.ini) and [FQA Section 3.2 - Known Working Hardware](fqa3#3.2_-_Known_Working_Hardware.md).

##### 6.2.2.1.1 - wavelan #####
Lucent Wavelan (Orinoco) IEEE 802.11b and compatible PCMCIA cards.  Compatible cards include the Dell TrueMobile 1150 and the Linksys Instant Wireless Network PC Card.  Port and IRQ defaults are 0x180 and 3 respectively.

These cards take a number of unique options to aid in identifying the card correctly on the 802.11b network.  The network may be ad hoc or managed (i.e. use an access point): `mode=[adhoc, managed]` and defaults to managed. The 802.11b network to attach to (managed mode) or identify as (ad hoc mode), is specified by `essid=string` and defaults to a null string.  The card station name is given by `station=string` and defaults to Plan 9 STA. The channel to use is given by `channel=number` where number lies in the range 1 to 16 inclusive; the channel is normally negotiated automatically.

If the card is capable of encryption, the following options may be used: `crypt=[off, on]` and defaults to on. `keyN=string` sets the encryption key N (where N is in the range 1 to 4 inclusive) to string; this will also set the transmit key to N (see below).  There are two formats for string which depend on the length of the string.  If it is exactly 5 or 13 characters long it is assumed to be an alphanumeric key; if it is exactly 10 or 26 characters long the key is assumed to be in hex format (without a leading 0x). The lengths are checked, as is the format of a hex key. `txkey=number` sets the transmit key to use to be number in the range 1 to 4 inclusive.  If it is desired to exclude or include unencrypted packets `clear=[off, on]` configures reception and defaults to inclusion.

The defaults are intended to match the common case of a managed network with encryption and a typical  entry would only require, for example `essid=left-armpit key1=afish key2=calledraawaru` if the port and IRQ defaults are used.  These options may be set after boot by writing to the device's ctl file using a space as the separator between option and value, e.g. `echo 'key2 1d8f65c9a52d83c8e4b43f94af' >/net/ether0/0/ctl` Card-specific power management may be enabled/disabled by `pm=[on, off]`

##### 6.2.2.1.2 - wavelanpci #####
PCI Ethernet adapters that use the same Wavelan programming interface.  Currently the only tested cards are those based on the Intersil Prism 2.5 chipset.

##### 6.2.2.1.3 - iwl #####
Intel Wireless WiFi Link mini PCI-Express adapters require firmware from
[http://firmware.openbsd.org/firmware/iwn-firmware\*.tgz](http://firmware.openbsd.org/firmware/) to be present on attach in /lib/firmware or /boot. To select the access point, the `essid=` and `bssid=` parameters can be specified at boot or set during runtime like:

`echo essid left-armpit >/net/ether1/clone`

If both `essid=` and `bssid=` are specified, both must match.  Scan results appear in the `ifstats` file and can be read out like:

`cat /net/ether1/ifstats`

Ad-hoc mode or WEP encryption is currently not supported.  To enable WPA/WPA2 encryption, see wpa(8)for details.

##### 6.2.2.1.4 - rt2860 #####
Ralink Technology PCI/PCI-Express wireless adapters require firmware from [http://firmware.openbsd.org/firmware/ral-firmware\*.tgz](http://firmware.openbsd.org/firmware/) to be present on attach in /lib/firmware or /boot. See iwl section above for configuration details.

##### 6.2.2.1.5 - WPA #####
WPA1/TKIP and WPA2/CCMP are supported with the use of the [wpa(8)](http://man.aiju.de/8/wpa) command.

See [wpa(8)](http://man.aiju.de/8/wpa)

#### 6.2.2.1.6 - Wifi Roaming ####
A script can be used to dynamically re-associate with available wifi access points: [wifiroam](http://plan9.stanleylieber.com/rc/wifiroam)

Example usage:
```
@{wifiroam attwifi | aux/statusmsg -k wifiroam} &
```

#### 6.2.2.1.7 - Wifi Debug ####
For cards that use the wifi layer, debug prints (<b>note:</b> will appear on the console) may be enabled with:
```
echo debug >'#l0/ether0/clone' # change this to suit if wifi interface is not #l0
```

or by adding `debug=1` to the interface definition in `plan9.ini`.

See [plan9.ini(8)](http://man.aiju.de/8/plan9.ini)

### 6.2.3 - IP address ###
The `ip=` tuple is used to associate an IP address with the machine:

```
sys=x301 ether=00226811f7dd ip=192.168.0.31
```

If no `ip=` tuple is present, the boot scripts will attempt to bring up the interface using DHCP (see below).

### 6.2.4 - Default gateway ###
The default gateway is configured using the `ipgw=` tuple, usually under an `ipnet=` section that defines default settings for an entire subnet:

```
ipnet=9front ip=192.168.0.0 ipmask=255.255.255.0 ipgw=192.168.0.1
```

but it may also be specified on a per-machine basis:

```
sys=x301 ether=00226811f7dd ip=192.168.0.31 ipgw=192.168.0.1
```

**Note:** Tuples included in the definition of a machine supercede those defined for the network to which the machine belongs.

### 6.2.5 - DNS Resolution ###
DNS resolvers may be specified using the `dns=` tuple, and may be configured for an entire network:
```
ipnet=9front ip=192.168.0.0 ipmask=255.255.255.0 ipgw=192.168.0.1
	dns=192.168.0.1
```

or on a per-machine basis:
```
sys=x301 ether=00226811f7dd ip=192.168.0.31 dns=192.168.0.1
```

These changes will take effect after a reboot. To configure a DNS resolver on the fly, it is possible to manually edit `/net/ndb`:
```
ip=192.168.0.31 ipmask=255.255.255.0 ipgw=192.168.0.1
	sys=x301
	dom=x301.9front
	dns=192.168.0.1 # add or modify this line to associate the DNS server 192.168.0.1 with the running system
```

<b>Note:</b> `/net/ndb` is a synthetic file that represents the current operating state. It does not persist across reboots.

See [ip(3)](http://man.aiju.de/3/ip)

Finally, to turn on debug in `dns`:
```
echo -n debug >/net/dns
```

#### 6.2.5.1 - Caching DNS server ####
To run a caching DNS server, add entries corresponding to the DNS rootservers in `/lib/ndb/local`:

```
#
#  entries defining the dns root.  these will be overridden by any
#  authentic info obtained from the root.
#
dom=
	ns=A.ROOT-SERVERS.NET
	ns=B.ROOT-SERVERS.NET
	ns=C.ROOT-SERVERS.NET
	ns=D.ROOT-SERVERS.NET
	ns=E.ROOT-SERVERS.NET
	ns=F.ROOT-SERVERS.NET
	ns=G.ROOT-SERVERS.NET
	ns=H.ROOT-SERVERS.NET
	ns=I.ROOT-SERVERS.NET
	ns=J.ROOT-SERVERS.NET
	ns=K.ROOT-SERVERS.NET
	ns=L.ROOT-SERVERS.NET
	ns=M.ROOT-SERVERS.NET
```

Next, modfiy `/cfg/$sysname/termrc` or `/cfg/$sysname/cpurc` (whichever is appropriate) to include the following:

```
ndb/dns -rs
```

The caching DNS server will be started at boot time.

Finally, modify `/lib/ndb/local` such that the desired machines will use the IP address of the new caching DNS server as their DNS server, either by changing the `dns=` tuple under the `ipnet` of the corresponding network or by adding a `dns=` tuple to the line of each desired machine.

See [ndb(6)](http://man.aiju.de/6/ndb) and [ndb(8)](http://man.aiju.de/8/ndb).

#### 6.2.5.2 - DNS authoritative name server ####
An authoritative domain name record, with associated reverse-lookup and sub-domains, looks like this:

```
dom=bell-labs.co soa=
	refresh=10800 ttl=10800
	serial=2012110732
	ns=ns5.he.net
	ns=ns4.he.net
	ns=ns3.he.net
	ns=ns2.he.net
	ns=nm.iawtp.com
	ns=pp.iawtp.com
	ns=mars2.iawtp.com
	dnsslave=slave.dns.he.net
	mb=sl@stanleylieber.com
	mx=pp.inri.net pref=5
	mx=nm.inri.net pref=10
	mx=mars2.inri.net pref=15
	txtrr="v=spf1 mx -all"

dom=125.191.107.in-addr.arpa soa=
	refresh=3600 ttl=3600
	ns=nm.iawtp.com

dom=bell-labs.co ip=107.191.125.208

dom=www.bell-labs.co cname=bell-labs.co
```

An FQDN may be assigned to an existing machine by adding the `dom=` tuple to its definition:

```
sys=x301 dom=x301.bell-labs.co ether=00226811f7dd ip=192.168.0.31
```

<b>Note:</b> The dnsslave entries specify slave DNS servers that should be notified when the domain changes. The notification also requires the -n flag:

```
ndb/dns -nrs
```

See [ndb(8)](http://man.aiju.de/8/ndb).

### 6.2.6 - Network-wide configuration ###
Settings for an entire network subnet may be defined under an `ipnet=` tuple:

```
ipnet=9front ip=192.168.0.0 ipmask=255.255.255.0
	ipgw=192.168.0.1
	auth=192.168.0.2
	authdom=9front
	fs=192.168.0.3
	cpu=192.168.0.4
	dns=192.168.0.1
	dnsdom=9front
	smtp=192.168.0.4

sys=onoff dom=onoff.9front ip=192.168.0.1 # ethernet/wifi router

sys=auth dom=auth.9front ether=00d059b6dac8 ip=192.168.0.2 bootf=/386/9bootpxe # auth server

sys=cpu dom=cpu.9front ether=001125149137 ip=192.168.0.4 bootf=/386/9bootpxe # cpu server

sys=fs dom=fs.9front ether=001641360117 ip=192.168.0.3 # fileserver

sys=x301 dom=x301.9front ether=00226811f7dd ip=192.168.0.31 bootf=/386/9bootpxe # terminal
```

### 6.2.7 - Activating the changes ###
To refresh the network database **NOW** after changing `/lib/ndb/local`:

```
echo -n refresh > /net/cs
```

Network interfaces are only automatically initialized at boot time. To make a manual change without rebooting, use the [ipconfig(8)](http://man.aiju.de/8/ipconfig) command:

```
ip/ipconfig -g 192.168.0.1 ether /net/ether0 192.168.0.31 255.255.255.0
```

### 6.2.8 - Verifying network settings ###
```
% cat /net/ndb
ip=192.168.0.31 ipmask=255.255.255.0 ipgw=192.168.0.1
	sys=x301
	dom=x301.9front
	auth=192.168.0.2
	dns=192.168.0.1
```

#### 6.2.8.1 - Checking routes ####
```
% cat /net/iproute
0.0.0.0         /96  192.168.0.1     4    none   -
192.168.0.0     /120 192.168.0.0     4i   ifc    0
192.168.0.0     /128 192.168.0.0     4b   ifc    -
192.168.0.31    /128 192.168.0.31    4u   ifc    0
192.168.0.255   /128 192.168.0.255   4b   ifc    -
255.255.255.255 /128 255.255.255.255 4b   ifc    0
```

##### 6.2.8.1.1 - Adding static routes #####
Route requests for `192.168.1.0/24` through the gateway `192.168.0.99` (which itself must already be accessible via the existing network configuration):
```
echo 'add 192.168.1.0 255.255.255.0 192.168.0.99' >/net/iproute
```

**Note:** Manual configuration such as this may be added to optional boot scripts created in `/cfg/$sysname/`.

See [ip(3)](http://man.aiju.de/3/ip).

### 6.2.9 - Setting up your 9front box as a forwarding gateway ###
See [ip(3)](http://man.aiju.de/3/ip).

### 6.2.10 - Setting up aliases on an interface ###
See [ip(3)](http://man.aiju.de/3/ip).

## 6.3 - How do I filter and firewall with 9front? ##
No.

## 6.4 - Dynamic Host Configuration Protocol (DHCP) ##

### 6.4.1 - DHCP client ###
In `/lib/ndb/local`, if no `ip=` tuple is present in the machine's definition, the boot scripts will attempt to obtain an IP address via DHCP.

To obtain a DHCP lease manually:

```
ip/ipconfig
```

See [ipconfig(8)](http://man.aiju.de/8/ipconfig).

### 6.4.2 - DHCP server ###
From [dhcpd(8)](http://man.aiju.de/8/dhcpd):
```
Dhcpd runs the BOOTP and DHCP protocols.  Clients use these
protocols to obtain configuration information.  This infor-
mation comes from attribute/value pairs in the network data-
base (see ndb(6) and ndb(8)). DHCP requests are honored both
for static addresses found in the NDB and for dynamic
addresses listed in the command line.  DHCP requests are
honored if either:
- there exists an NDB entry containing both the ethernet
address of the requester and an IP address on the originat-
ing network or subnetwork.
- a free dynamic address exists on the originating network
or subnetwork.

A BOOTP request is honored if all of the following are true:
- there exists an NDB entry containing both the ethernet
address of the requester and an IP address on the originat-
ing network or subnetwork.
- the entry contains a bootf= attribute
- the file in the bootf= attribute is readable.

Dynamic addresses are specified on the command line as a
list of addresses and number pairs.  For example,
     ip/dhcpd 10.1.1.12 10 10.2.1.70 12
directs dhcpd to return dynamic addresses 10.1.1.12 through
10.1.1.21 inclusive and 10.2.1.70 through 10.2.1.81 inclu-
sive.

Dhcpd maintains a record of all dynamic addresses in the
directory /lib/ndb/dhcp, one file per address.  If multiple
servers have access to this common directory, they will cor-
rectly coordinate their actions.

Attributes come from either the NDB entry for the system,
the entry for its subnet, or the entry for its network.  The
system entry has precedence, then the subnet, then the net-
work.  The NDB attributes used are:

ip      the IP address
ipmask  the IP mask
ipgw    the default IP gateway
dom     the domain name of the system
fs      the default Plan 9 name server
auth    the default Plan 9 authentication server
dns     a domain name server
ntp     a network time protocol server
time    a time server
wins    a NETBIOS name server
www     a World Wide Web proxy
pop3    a POP3 mail server
smtp    an SMTP mail server
bootf   the default boot file; see ndb(6)

Dhcpd will answer BOOTP requests only if it has been specif-
ically targeted or if it has read access to the boot file
for the requester.  That means that the requester must spec-
ify a boot file in the request or one has to exist in NDB
for dhcpd to answer.  Dhcpd will answer all DHCP requests
for which it can associate an IP address with the requester.
```

To configure a DHCP server on your system, modify `/cfg/$sysname/cpurc` or '/cfg/$sysname/termrc' (whichever is appropriate) to start `dhcpd` and `tftpd` at boot time:

```
ip/dhcpd
```

See [dhcpd(8)](http://man.aiju.de/8/dhcpd) for additional information.

## 6.5 - PPP ##
See [Dailup modem config](http://www.plan9.bell-labs.com/wiki/plan9/Dialup_modem_config/index.html) at the Bell Labs Plan 9 wiki.

## 6.6 - Setting up a network bridge in 9front ##
See [bridge(3)](http://man.aiju.de/3/bridge) and [ip(3)](http://man.aiju.de/3/ip).

## 6.7 - How do I boot from the network? ##
First, read FQA section [7.3.3 - Setting up a listener for network connections](fqa7#7.3.3_-_Setting_up_a_listener_for_network_connections.md). The fileserver should already be running a listener, and an auth server should already be configured and running on the network.

### 6.7.1 - How do I tcp boot? ###
It is possible to boot from local media and then mount the root file system over the network. At the `bootargs` prompt, type `tcp`. At this point, <b>ip/ipconfig</b> will determine network parameters using DHCP. When file (`fs`) or authentication (`auth`) server IP addresses could not be determined over DHCP then the boot process will prompt for those. When prompted for a `user`, enter a valid username and password that has already been configured on the auth server. The machine should then proceed to mount its root file system from the fileserver.

<b>Note:</b> Values for `fs` and `auth` may be added to `plan9.ini`.

#### 6.7.1.1 - Passing arguments to ipconfig at the bootargs prompt ####
When a DHCP server is not available, you may still tcp boot by configuring networking manually at the `bootargs` prompt. Everything after `tcp!` is passed as arguments to the `ipconfig` command:

```
bootargs is (tcp, il, local!device) [tcp] tcp!-g 192.168.0.1 ether /net/ether0 192.168.0.23 255.255.255.0
```

where `192.168.0.1` is the gateway, `192.168.0.23` is the static IP address and `255.255.255.0` is the subnet mask.

See [ipconfig(8)](http://man.aiju.de/8/ipconfig)

### 6.7.2 - How do I boot using PXE? ###
It is also possible to PXE boot a system.

On the fileserver, add the following lines to `/cfg/$sysname/cpurc` to start `dhcpd` and `tftpd` at boot time:

```
ip/dhcpd
ip/tftpd
```

Add an entry for `tftp` under the appropriate `ipnet=` tuple in `/lib/ndb/local`:

```
ipnet=9front ip=192.168.0.0 ipmask=255.255.255.0 ipgw=192.168.0.1
	auth=192.168.0.2
	authdom=9front
	cpu=192.168.0.4
	dns=192.168.0.1
	dnsdom=9front
	smtp=192.168.0.4
	tftp=192.168.0.3
```

Reboot the fileserver:

```
fshalt -r
```

To configure machines that will PXE boot from the fileserver, edit `/lib/ndb/local` on the fileserver and add a `bootf=` (boot file) tuple to the line representing each machine:

```
sys=x301 dom=x301.9front ether=00226811f7dd ip=192.168.0.31 
  bootf=/386/9bootpxe
```

For the system `x301` we would then create a file `/cfg/pxe/00226811f7dd` on the fileserver to serve as its `plan9.ini`:

```
bootfile=/386/9pcf
bootargs=tcp
nobootprompt=tcp
auth=192.168.0.2
fs=192.168.0.3
mouseport=ps2intellimouse
monitor=vesa
vgasize=1440x900x32
*acpi=1
user=sl
```

**Note:** The `user=` parameter refers to a single username that has been added both to the fileserver (for file permissions) as well as to the auth server (for network authentication).

If a file matching the remote system's MAC address is not found under `/cfg/pxe/`, the file `/cfg/pxe/default` (if it exists) will be used instead.

Finally, boot the desired remote systems via PXE. When prompted for a `user`, enter a valid username and password that has already been configured on the auth server. The remote system should now proceed to boot from the fileserver.

[Index](fqa.md) [To Section 5 - Building the System from Source](fqa5.md) [To Section 7 - System Management](fqa7.md)