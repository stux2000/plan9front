[Index](fqa.md) [To Section 3 - Hardware](fqa3.md) [To Section 5 - Building the System from Source](fqa5.md)

# 4 - 9front Installation Guide #

<img src='http://9front.org/img/install.gif'>

<h2>Table of Contents</h2>
<a href='fqa4#4.1_-_Pre-installation_Checklist.md'>4.1 - Pre-installation Checklist</a>

<a href='fqa4#4.2_-_Creating_bootable_9front_install_media.md'>4.2 - Creating bootable 9front install media</a>

<a href='fqa4#4.2.1_-_ISO_image.md'>4.2.1 - ISO image</a>

<a href='fqa4#4.2.2_-_USB_drive.md'>4.2.2 - USB drive</a>

<a href='fqa4#4.2.2.1_-_Creating_on_Plan_9.md'>4.2.2.1 - Creating on Plan 9</a>

<a href='fqa4#4.2.2.2_-_Creating_on_Linux.md'>4.2.2.2 - Creating on Linux</a>

<a href='fqa4#4.2.2.3_-_Bootargs.md'>4.2.2.3 - Bootargs</a>

<a href='fqa4#4.3_-_Performing_a_simple_install.md'>4.3 - Performing a simple install</a>

<a href='fqa4#4.3.1_-_boot.md'>4.3.1 - boot</a>

<a href='fqa4#4.3.2_-_bootargs.md'>4.3.2 - bootargs</a>

<a href='fqa4#4.3.3_-_user.md'>4.3.3 - user</a>

<a href='fqa4#4.3.4_-_vgasize,_monitor,_mouseport.md'>4.3.4 -  vgasize, monitor, mouseport</a>

<a href='fqa4#4.3.4.1_-_Changing_screen_resolution.md'>4.3.4.1 - Changing screen resolution</a>

<a href='fqa4#4.3.5_-_inst/start.md'>4.3.5 -  inst/start</a>

<a href='fqa4#4.3.6_-_configfs.md'>4.3.6 - configfs</a>

<a href='fqa4#4.3.7_-_partdisk.md'>4.3.7 -  partdisk</a>

<a href='fqa4#4.3.8_-_prepdisk.md'>4.3.8 - prepdisk</a>

<a href='fqa4#4.3.9_-_mountfs.md'>4.3.9 - mountfs</a>

<a href='fqa4#4.3.10_-_configdist.md'>4.3.10 - configdist</a>

<a href='fqa4#4.3.11_-_confignet.md'>4.3.11 - confignet</a>

<a href='fqa4#4.3.11.1_-_dhcp.md'>4.3.11.1 - dhcp</a>

<a href='fqa4#4.3.11.2_-_manual.md'>4.3.11.2 - manual</a>

<a href='fqa4#4.3.12_-_mountdist.md'>4.3.12 - mountdist</a>

<a href='fqa4#4.3.13_-_copydist.md'>4.3.13 - copydist</a>

<a href='fqa4#4.3.14_-_sysname.md'>4.3.14 - sysname</a>

<a href='fqa4#4.3.15_-_tzsetup.md'>4.3.15 - tzsetup</a>

<a href='fqa4#4.3.16_-_bootsetup.md'>4.3.16 - bootsetup</a>

<a href='fqa4#4.3.17_-_finish.md'>4.3.17 - finish</a>

<a href='fqa4#4.4_-_Encrypted_Partitions.md'>4.4 - Encrypted Partitions</a>


<h2>4.1 - Pre-installation Checklist</h2>
Before you start your install, you should have some idea what you want to end up with. You will want to know the following items, at least:<br>
<br>
<ul><li>Machine name, hereafter referred to as <code>sysname</code>.<br>
</li><li>Hardware installed and available:<br>
<ul><li>See FAQ section <a href='fqa3#3.2_-_Selecting_Hardware.md'>3.3 - Selecting Hardware</a>. Check <a href='fqa3#3.2_-_Known_Working_Hardware.md'>FQA Section 3.2 - Known Working Hardware</a> as well as the <a href='http://www.plan9.bell-labs.com/wiki/plan9/Supported_PC_hardware'>various</a> <a href='http://www.plan9.bell-labs.com/wiki/plan9/other_hardware'>supported</a> <a href='http://www.plan9.bell-labs.com/wiki/plan9/virtual_machines'>hardware</a> pages on the Bell Labs Plan 9 wiki to help determine if your hardware or VM is supported.<br>
</li></ul></li><li>Network settings, if not using DHCP:<br>
<ul><li>Gather the requisite information for your network (IP, netmask, default gateway, etc.).<br>
</li></ul></li><li>If you plan to install in a VM, see <a href='fqa3#3.3_-_Virtual_Machines.md'>3.3 - Virtual Machines</a>.<br>
</li><li>In case of trouble, see <a href='fqa9.md'>9 - Troubleshooting</a>, <a href='fqa2#2.2.1_-_Mailing_List_Archives.md'>2.2.1 - Mailing List Archives</a>, or join #cat-v on freenode.</li></ul>

<h2>4.2 - Creating bootable 9front install media</h2>
<h3>4.2.1 - ISO image</h3>
<ul><li>Obtain the <a href='mirrors.md'>9front.iso</a>.<br>
<h3>4.2.2 - USB drive</h3>
Booting from USB disk is handled the same way as booting from internal hard drive. In general, the boot process is able to use an ISO image stored on a FAT filesystem as its root filesystem, so all that is needed is to install the <a href='http://man.aiju.de/8/9boot'>9boot(8)</a> bootloader, a kernel and the 9front.iso on the USB disk.</li></ul>

<h4>4.2.2.1 - Creating on Plan 9</h4>
The path to your USB device will look something like this: <code>/dev/sdUxxxxx</code>
where <code>xxxxx</code> is the unique name of your usb device.<br>
<br>
Build and install the mbr and boot loader:<br>
<pre><code>cd /sys/src/boot/pc<br>
mk 9bootfat mbr pbs<br>
disk/mbr -m mbr /dev/sdUxxxxx/data<br>
</code></pre>

If it doesn't already exist, create and format a FAT partition. Don't forget to set it active:<br>
<pre><code>disk/fdisk -b /dev/sdUxxxxx/data<br>
disk/format -b pbs -d -r 2 /dev/sdUxxxxx/dos<br>
</code></pre>

Mount the USB device:<br>
<pre><code>dossrv -f /dev/sdUxxxxx/dos sdos<br>
mount -c /srv/sdos /n/dos<br>
</code></pre>

Create a suitable /n/dos/plan9.ini:<br>
<pre><code>bootfile=9pcf<br>
mouseport=ask<br>
monitor=ask<br>
vgasize=ask<br>
</code></pre>

<b>Note:</b> By convention, Plan 9 usually expects text files to end with a newline. If the last line of plan9.ini is not a newline, it could fail to be parsed correctly at boot time.<br>
<br>
Copy files to the USB device:<br>
<pre><code>cp /386/9bootfat /n/dos<br>
chmod +al /n/dos/9bootfat # defrag magic<br>
cp /386/9pcf /n/dos<br>
cp /path/to/9front.iso /n/dos<br>
</code></pre>

Optional for EFI systems:<br>
<pre><code>cd /sys/src/boot/efi; mk install<br>
mkdir -p /n/dos/efi/boot<br>
cp /386/boot*.efi /n/dos/efi/boot<br>
</code></pre>

Unmount the USB device:<br>
<pre><code>unmount /n/dos<br>
rm -f /srv/sdos<br>
</code></pre>

Boot.<br>
<br>
See also: <a href='http://man.aiju.de/8/prep'>prep(8)</a>

<h4>4.2.2.2 - Creating on Linux</h4>
Obtain <code>mbr</code>, <code>pbs</code>, <code>9bootfat</code> and <code>9pcf</code> binaries. Either copy them from the distributed ISO image (the files are located under <code>/386/</code>) or build up to date binaries on a 9front system (See: <a href='fqa5#5.2.2_-_Building_from_source.md'>5.2.2 - Building from source</a>).<br>
<br>
On the Linux system, create a $dir with that contains the following files:<br>
<ul><li><code>9front.iso</code>
</li><li><code>9pcf</code>
</li><li><code>plan9.ini</code> (as described above)<br>
</li><li><code>9bootfat</code>
</li><li><code>mbr</code>
</li><li><code>pbs</code></li></ul>

Optional for EFI systems, create the directory <code>boot</code> in $dir and copy the files <code>bootia32.efi</code> and <code>bootx64.efi</code> into it.<br>
<br>
Use the <a href='http://freshmeat.net/projects/makebootfat/'>makebootfat</a> tool to create bootable device (ie. <code>/dev/sdc</code>):<br>
<pre><code>$ makebootfat -m $dir/mbr -b $dir/pbs -o /dev/sdc $dir<br>
</code></pre>

Boot.<br>
<br>
<h4>4.2.2.3 - Bootargs</h4>
At the bootargs prompt you'll need to enter the path to the ISO on the USB device. It will look something like this:<br>
<br>
<pre><code>bootargs=local!/shr/sdUxxxxx/9front.iso<br>
</code></pre>

If a USB device is not listed, escape to a shell with <code>!rc</code>, and <code>ls /shr</code> to find it.<br>
<br>
<h2>4.3 - Performing a simple install</h2>
There is nothing magical about installing Plan 9. It is simply a matter of populating a Plan 9 file system (<code>cwfs</code> or <code>hjfs</code>) and arranging a bootstrap to eventually load a Plan 9 kernel that can then use that file system as its root.<br>
<br>
In most cases, the fileserver is the only machine that needs to have a disk. Once the initial fileserver is running, setting up an auth server and enabling <code>bootp</code> and <code>tftp</code> for PXE booting will allow Plan 9 terminals and cpu servers to load kernels from the fileserver and share its file system over the network.<br>
<br>
<b>Note:</b> This guide describes the default installation of a terminal with disk, which is sufficient for exploring the basics of using Plan 9. Configuration of additional services (such as a fileserver with networking listeners) is outlined in <a href='fqa7.md'>FQA 7 - System Management</a>.<br>
<br>
To install 9front, boot the <code>9front.iso</code> image and follow the steps below.<br>
<br>
<h3>4.3.1 - boot</h3>
Successfully booting the system will result in basic information about the state of the system being printed on screen:<br>
<br>
<pre><code>Plan 9<br>
126 holes free<br>
00018000 0009f000 552960<br>
00485000 0cf2c000 212496384<br>
213049344 bytes free<br>
cpu0: 3395MHz GenuineIntel P6 (cpuid: AX 0x206A7 CX 0x82982203 DX 0xFEBFBFF)<br>
ELCR: 0E20<br>
#l0: AMD79C970: 10Mbps port 0x2000 irq 10: 000c291d0baf<br>
mylex ctlr @ port 0x10c0: 32-bit wide SCSI host adapter<br>
512M memory: 207M kernel data, 304M user, 929M swap<br>
nusb/usbd: /dev/usb: no hubs<br>
</code></pre>

<h3>4.3.2 - bootargs</h3>
A list of attached storage devices is printed, followed by a prompt asking for a Plan 9 partition to boot from:<br>
<br>
<pre><code>/dev/sdC0: VMware Virtual IDE Hard Drive<br>
/dev/sdC0/data<br>
/dev/sdD0: VMware Virtual IDE CDROM Drive<br>
/dev/sdD0/data 9660<br>
bootargs is (tcp, il, local!device) [local!/dev/sdD0/data]<br>
</code></pre>

In most cases, the suggested default will correspond to the device used to boot the ISO image.<br>
<br>
<h3>4.3.3 - user</h3>
Next, a prompt asks for a username:<br>
<br>
<pre><code>user[glenda]:<br>
</code></pre>

Glenda is the default <code>hostowner</code> name. Don't change this until you know what you are doing. Hit <code>enter</code> to accept the default.<br>
<br>
<b>Note:</b> The <code>hostowner</code> differs from the concept of <code>root</code> on a UNIX system, where a single user <code>root</code> may take control of all processes <i>and</i> files on the system. By contrast, even the <code>hostowner</code> of a Plan 9 fileserver cannot violate file permissions on the filesystem, except when permissions checking is disabled on the console or when entering special commands at the console of the fileserver. The <code>hostowner</code> controls only the <i>processes</i> running on the local machine (in the case of the filserver, the fileserver process itself is obviously owned by the system's <code>hostowner</code>). This fundamental separation between control of processes and file permissions is exploited throughout the system, but can be confusing for users coming from a UNIX background.<br>
<br>
<h3>4.3.4 - vgasize, monitor, mouseport</h3>
The next set of prompts deal with graphics display:<br>
<br>
<pre><code>vgasize is (text, 640x480x8, 1024x768x16, ...) [1024x768x16]<br>
monitor is (vesa, xga, lcd, ...) [vesa]<br>
mouseport is (ps2, ps2intellimouse, 0, 1, 2) [ps2]<br>
</code></pre>

The installer prompts for the environment variables <code>$vgasize</code>, <code>$monitor</code> and <code>$mouseport</code>, and later writes those values to the system's <code>plan9.ini</code>, from which they are loaded on subsequent system bootup. Setting <code>$monitor</code> to anything besides <code>vesa</code> will bypass the emulated VESA BIOS and attempt to use a native VGA driver for the video card in question. (See <code>/lib/vgadb</code> for a list of monitors and video cards that are already known by the system, and the man pages <a href='http://man.aiju.de/3/vga'>vga(3)</a>, <a href='http://man.aiju.de/8/vga'>vga(8)</a> and <a href='http://man.aiju.de/6/vgadb'>vgadb(6)</a> for more information about how graphical displays are configured.)<br>
<br>
Set $mouseport to <code>ps2intellimouse</code> on laptops or for mice that have a scrollwheel.<br>
<br>
<b>Note:</b> Some laptops require the trackpad to be disabled in the BIOS in order for mouse button 2 (the center button) to function in Plan 9. In a pinch, mouse button 2 may be simulated by holding down the <code>shift</code> key while clicking mouse button 3 (the right button).<br>
<br>
After the install, changes intended to persist across reboots should be added to <code>plan9.ini</code>.<br>
<br>
Examples:<br>
<br>
Values as they appear in <code>plan9.ini</code>:<br>
<pre><code>monitor=vesa<br>
vgasize=1024x768x16<br>
mouseport=ps2intellimouse<br>
</code></pre>

See <a href='http://man.aiju.de/8/mouse'>mouse(8)</a>, <a href='http://man.aiju.de/3/vga'>vga(3)</a>, <a href='http://man.aiju.de/6/vgadb'>vgadb(6)</a>, <a href='http://man.aiju.de/8/plan9.ini'>plan9.ini(8)</a>, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a>, <a href='http://man.aiju.de/8/vga'>vga(8)</a>, <a href='fqa7#7.2.2_-_How_do_I_modify_plan9.ini?.md'>7.2.2 - How do I modify plan9.ini?</a>

After the <code>mouseport</code> prompt is answered, the boot process will attempt to start the Plan 9 graphical environment, <a href='http://man.aiju.de/1/rio'>rio(1)</a>, opening a <a href='http://man.aiju.de/8/stats'>stats(8)</a> window and a rio window on top of a gray desktop background.<br>
<br>
<img src='http://farm9.staticflickr.com/8428/7585706618_7100cc59f0.jpg' />

<h4>4.3.4.1 - Changing screen resolution</h4>

At this point it may be desireable to change the screen resolution. To change video mode from the command line:<br>
<br>
vesa:<br>
<pre><code>@{rfork n; aux/realemu; aux/vga -p} # obtain a list of vesa bios modes<br>
@{rfork n; aux/realemu; aux/vga -m vesa -l 1024x768x16}<br>
</code></pre>

vga:<br>
<pre><code>aux/vga -m dellst2210 -l 1920x1080x32<br>
</code></pre>

<h3>4.3.5 - inst/start</h3>
Installation is performed by the rc scripts in <code>/rc/bin/inst</code>. To begin the installation, type <code>inst/start</code> in the terminal window. Follow the prompts to complete the installation, selecting the defaults where appropriate.<br>
<br>
<b>Note:</b> Any task may be repeated by manually entering its name at the next <code>Task to do</code> prompt.<br>
<br>
<pre><code>term% inst/start<br>
Tue Jul 17 12:38:50 CET 2012 Installation process started<br>
</code></pre>

The following <code>Task to do</code> steps are handled one at a time:<br>
<br>
<h3>4.3.6 - configfs</h3>
<pre><code>You can install the following types of systems:<br>
<br>
     cwfs64x     the cached-worm file server<br>
     hjfs        the new 9front fileserver (experimental!)<br>
<br>
File system (cwfs64x, hjfs)[cwfs64x]:<br>
</code></pre>

<b>Note:</b> If you are installing to a disk of less than 12GB, you should choose <code>hjfs</code> (its cache and permanent storage are both located on the same partition, and so require less overall disk space).<br>
<br>
See: <a href='fqa3#3.3_-_What_is_an_appropriate_first_system_to_learn_9front_on?.md'>3.3 - What is an appropriate first system to learn 9front on?</a>.<br>
<br>
In this example we will press <code>enter</code> to accept <code>cwfs64x</code> as the default.<br>
<br>
<h3>4.3.7 -  partdisk</h3>
<pre><code>The following disk devices were found.<br>
<br>
sdC0 - VMware Virtual IDE Hard Drive<br>
   empty                  0 3916        (3916 cylinders, 29.99 GB) <br>
<br>
sdD0 - VMware Virtual IDE CDROM Drive<br>
<br>
Disk to partition (sdC0, sdD0)[no default]:<br>
</code></pre>

Enter the media you wish to install to.<br>
<br>
<pre><code>Disk to partition (sdC0, sdD0)[no default]: sdC0<br>
The disk you selected HAS NO master boot record on its first sector.<br>
(Perhaps it is a completely blank disk.)<br>
You need a master boot record to use the disk.<br>
Should we install a default master boot record?<br>
</code></pre>

Assuming a blank disk image, install a fresh mbr:<br>
<br>
<pre><code>Install mbr (y, n)[no default]: y<br>
<br>
This is disk/fdisk; use it to create a Plan 9 partition.<br>
If there is enough room, a Plan 9 partition will be<br>
suggested; you can probably just type 'w' and then 'q'.<br>
<br>
cylinder = 8225280 bytes<br>
'* p1                     0 3916        (3916 cylinders, 29.99 GB) PLAN9<br>
&gt;&gt;&gt;<br>
</code></pre>

For this example we will use the entire disk. Accept the defaults.<br>
<br>
<pre><code>&gt;&gt;&gt; w<br>
&gt;&gt;&gt; q<br>
</code></pre>

<h3>4.3.8 - prepdisk</h3>
<pre><code>The following Plan 9 disk partitions were found.<br>
<br>
/dev/sdC0/plan9<br>
  empty                  0 62910477    (62910477 sectors, 29.99 GB)<br>
<br>
Plan 9 partition to subdivide (/dev/sdC0/plan9)[/dev/sdC0/plan9]: <br>
</code></pre>

Use the Plan 9 partition created in the previous step. Hit <code>enter</code> to select the default.<br>
<br>
<pre><code>This is disk/prep; use it to subdivide the Plan 9 partition.<br>
If it is not yet subdivided, a sensible layout will be suggested;<br>
you can probably just type 'w' and then 'q'.<br>
<br>
no plan9 partition table found<br>
9fat 204800<br>
nvram 1<br>
other 8957953<br>
fscache 8957953<br>
fsworm 44789770<br>
' 9fat                   0 204800      (204800 sectors, 100.00 MB)<br>
' nvram             204800 204801      (1 sectors, 512 B )<br>
' other             204801 9162754     (8957953 sectors, 4.27 GB)<br>
' fscache          9162754 18120707    (8957953 sectors, 4.27 GB)<br>
' fsworm          18120707 62910477    (44789770 sectors, 21.35 GB)<br>
&gt;&gt;&gt;<br>
</code></pre>

Again, accept the defaults.<br>
<br>
<pre><code>&gt;&gt;&gt; w<br>
&gt;&gt;&gt; q<br>
</code></pre>

<h3>4.3.9 - mountfs</h3>
<pre><code>The please choose your cwfs64x partitions<br>
</code></pre>

Hit <code>enter</code> to select each partition at the prompt.<br>
<br>
<pre><code>--rw-r----- S 0 glenda glenda 4586471936 Jul  4 13:28 /dev/sdC0/fscache<br>
<br>
Cwfs cache partition (/dev/sdC0/fscache)[/dev/sdC0/fscache]: <br>
--rw-r----- S 0 glenda glenda 22932362240 Jul  4 13:28 /dev/sdC0/fsworm<br>
<br>
Cwfs worm partition (/dev/sdC0/fsworm)[/dev/sdC0/fsworm]: <br>
--rw-r----- S 0 glenda glenda 4586471936 Jul  4 13:28 /dev/sdC0/other<br>
<br>
Cwfs other partition (/dev/sdC0/other)[/dev/sdC0/other]: <br>
</code></pre>

Since this is a fresh install, we choose <code>yes</code> to ream (format) the filesystem:<br>
<br>
<pre><code>Ream the filesystem? (yes, no)[no]: yes<br>
Starting cwfs64x file server for /dev/sdC0/fscache<br>
Reaming filesystem<br>
bad nvram key<br>
bad authentication id<br>
bad authentication domain<br>
nvrcheck: can't read nvram<br>
config: config: config: auth is now disabled<br>
config: config: config: config: config: config: current fs is "main"<br>
cmd_users: cannot access /adm/users<br>
63-bit cwfs as of Wed Jul  4 00:59:30 2012<br>
	last boot Tue Jul 17 13:34:57 2012<br>
Configuering cwfs64x file server for /dev/sdC0/fscache<br>
Mounting cwfs64x file server for /dev/sdC0/fscache<br>
% mount -c /srv/cwfs /n/newfs<br>
Mounting cwfs64x file server for /dev/sdC0/other<br>
% mount -c /srv/cwfs /n/other other<br>
</code></pre>

<h3>4.3.10 - configdist</h3>
<pre><code>Are you going to download the distribution<br>
from the internet or do you have it on local media?<br>
<br>
Distribution is from (local, net)[local]: <br>
</code></pre>

We are installing from local media, so, <code>local</code>. Hit <code>enter</code> to accept the default.<br>
<br>
<h3>4.3.11 - confignet</h3>
<pre><code>You can connect to the internet via<br>
a local ethernet or a dial-up PPP connection.<br>
<br>
Interface to use (ether, ppp)[ether]: <br>
<br>
Please choose a method for configuring your ethernet connection.<br>
<br>
	manual - specify IP address, network mask, gateway IP address<br>
	dhcp - use DHCP to automatically configure<br>
<br>
Configuration method (manual, dhcp)[dhcp]: <br>
</code></pre>

<h4>4.3.11.1 - dhcp</h4>

Hit <code>enter</code> to move on to the next task.<br>
<br>
<h4>4.3.11.2 - manual</h4>

Enter values appropriate for your network.<br>
<br>
<pre><code>Configuration method (manual, dhcp)[dhcp]: manual<br>
ip address [no default]: 10.0.2.15<br>
network mask [no default]: 255.255.255.0<br>
gateway address [no default]: 10.0.2.2<br>
</code></pre>

<h3>4.3.12 - mountdist</h3>
<pre><code>Please wait... Scanning storage devices...<br>
	/dev/sdC0/9fat<br>
	/dev/sdC0/data<br>
	/dev/sdC0/fscache<br>
	/dev/sdC0/fsworm<br>
	/dev/sdC0/other<br>
	/dev/sdD0/data<br>
<br>
The following storage media were detected.<br>
Choose the one containing the distribution.<br>
<br>
	/dev/sdD0/data (iso9660 cdrom)<br>
<br>
Distribution disk (/dev/sdD0/data, /dev/sdC0/fscache, /)[/]: <br>
</code></pre>

The CD-ROM is already mounted at <code>/</code>, so we hit <code>enter</code> to choose the default.<br>
<br>
<pre><code>% mount /srv/boot /n/distmedia<br>
<br>
Which directory contains the distribution?<br>
Any of the following will suffice (in order of preference):<br>
	- the root directory of the cd image<br>
	- the directory containing 9front.iso<br>
	- the directory containing 9front.iso.bz2<br>
<br>
Location of archives [/]: <br>
</code></pre>

And again, the root directory of the CD-ROM is already mounted at <code>/</code>, so hit <code>enter</code> to choose the default.<br>
<br>
<pre><code>% mount /srv/boot /n/distmedia<br>
<br>
Which directory contains the distribution?<br>
Any of the following will suffice (in order of preference):<br>
	- the root directory of the cd image<br>
	- the directory containing 9front.iso<br>
	- the directory containing 9front.iso.bz2<br>
<br>
Location of archives [/]: <br>
</code></pre>

Hit <code>enter</code>.<br>
<br>
<h3>4.3.13 - copydist</h3>
Hit <code>enter</code> at the <code>copydist</code> prompt to begin the process of copying the distribution files from the install media to the hard disk.<br>
<br>
<pre><code>processing /sys/lib/sysconfig/proto/allproto<br>
</code></pre>

<b>Note:</b> Currently, there is no progress meter. For systems without DMA, the <code>copydist</code> task may exceed one hour in duration. Disk activity may be verified by inspecting the stats(8) window.<br>
<br>
Eventually, you should see the following:<br>
<br>
<pre><code>file system made<br>
</code></pre>

This indicates that the system files have completed copying to the install target.<br>
<br>
<h3>4.3.14 - sysname</h3>
<pre><code>Setup network configuration<br>
<br>
sysname [cirno]: <br>
</code></pre>

Use a system name of your choice, or just hit <code>enter</code> to select the default.<br>
<br>
<h3>4.3.15 - tzsetup</h3>
<pre><code>Setup Time Zone<br>
<br>
Time Zone (Argentina, Australia_ACT, Australia_Broken-Hill,<br>
Australia_LHI, Australia_NSW, Australia_North, Australia_Queensland,<br>
Australia_South, Australia_Sturt, Australia_Tasmania,<br>
Australia_Victoria, Australia_West, Australia_Yancowinna, Brazil_Acre,<br>
Brazil_DeNoronha, Brazil_East, Brazil_West, CET, Canada_Atlantic,<br>
Canada_Central, Canada_East-Saskatchewan, Canada_Eastern,<br>
Canada_Mountain, Canada_Newfoundland, Canada_Pacific, Canada_Yukon,<br>
Chile_Continental, Chile_EasterIsland, Cuba, EET, Egypt, GB-Eire, GMT,<br>
HST, Hongkong, Iceland, Iran, Israel, Jamaica, Japan, Libya,<br>
Mexico_BajaNorte, Mexico_BajaSur, Mexico_General, NZ, NZ_CHAT, Navajo,<br>
PRC, Poland, ROC, ROK, Singapore, Turkey, US_Alaska, US_Arizona,<br>
US_Central, US_East-Indiana, US_Eastern, US_Hawaii, US_Michigan,<br>
US_Mountain, US_Pacific, US_Yukon, W-SU, WET)[US_Eastern]: <br>
</code></pre>

Type your chosen time zone and hit <code>enter</code>.<br>
<br>
<h3>4.3.16 - bootsetup</h3>
<pre><code>Setup Plan 9 FAT boot partition (9fat)<br>
<br>
Plan 9 FAT partition (/dev/sdC0/9fat)[/dev/sdC0/9fat]:<br>
</code></pre>

Hit <code>enter</code> to accept the default. Any environment variables entered at the <code>&gt;</code> prompt during boot, as well as settings configured during install will now be written to <code>/n/9fat/plan9.ini</code> and the kernel will be copied to the <code>9fat</code> partition.<br>
<br>
<pre><code>dossrv: serving #s/dos<br>
Initializing Plan 9 FAT partition.<br>
% disk/format -r 2 -d -b /386/pbs /dev/sdC0/9fat<br>
Initializing FAT file system<br>
type hard, 12 tracks, 255 heads, 63 sectors/track, 512 bytes/sec<br>
used 4096 bytes<br>
% mount -c /srv/dos /n/9fat /dev/sdC0/9fat<br>
% rm -f /n/9fat/9bootfat /n/9fat/plan9.ini /n/9fat/9pcf<br>
% cp /n/newfs/386/9bootfat /n/9fat/9bootfat<br>
% chmod +al /n/9fat/9bootfat<br>
% cp /tmp/plan9.ini /n/9fat/plan9.ini<br>
% cp /n/newfs/386/9pcf /n/9fat/9pcf<br>
<br>
If you use the Windows NT/2000/XP master boot record<br>
or a master boot record from a Unix clone (e.g., LILO or<br>
FreeBSD bootmgr), it is probably safe to continue using<br>
that boot record rather than install the Plan 9 boot record.<br>
</code></pre>

Since we are not installing on a disk with a pre-existing Windows installation, we choose to install the Plan 9 master boot record and mark the partition active:<br>
<br>
<pre><code>Install the Plan 9 master boot record (y, n)[no default]: y<br>
Mark the Plan 9 partition active (y, n)[no default]: y<br>
<br>
The Plan 9 partition is now marked as active.<br>
</code></pre>

<h3>4.3.17 - finish</h3>
The final task is to remove (or disable) the CD-ROM and finish by hitting <code>enter</code> to reboot the machine.<br>
<br>
Congratulations, you've just installed a 9front system!<br>
<br>
Now your cat goes to sleep on the keyboard.<br>
<br>
<img src='http://img.stanleylieber.com/src/14337/img/small.1342443432.png' />

<h2>4.4 - Encrypted Partitions</h2>
<img src='http://9front.org/img/cryptsetup.jpg' width='500'>

9front supports booting from encrypted <code>fsworm</code>, <code>fscache</code> and <code>other</code> partitions. The following assumes a hard drive <code>/dev/sdC0</code>:<br>
<br>
<ol><li>Begin the installation process as normal by booting <a href='mirrors.md'>9front.iso</a>.<br>
</li><li>During <code>partdisk</code> and <code>prepdisk</code>, create the <code>fsworm</code>, <code>fscache</code> and <code>other</code> partitions as normal.<br>
</li><li>At the <code>mountfs</code> prompt, enter <code>!rc</code> to drop to a shell prompt.<br>
</li><li>Format and activate the encrypted partitions (generates new encryption key):<br>
<pre><code>cryptsetup -f /dev/sdC0/fsworm /dev/sdC0/fscache /dev/sdC0/other<br>
cryptsetup -i /dev/sdC0/fsworm /dev/sdC0/fscache /dev/sdC0/other<br>
</code></pre>
</li><li>Type <code>exit</code> to resume the installation.<br>
</li><li>During <code>mountfs</code>, select the partitions under <code>/dev/fs</code> instead of the ones under <code>/dev/sdC0</code>.<br>
</li><li>During the rest of the installation, select the defaults, where appropriate.<br>
</li><li>During post-installation boot, at the <code>bootargs</code> prompt, type <code>!rc</code> to drop to a shell prompt.<br>
</li><li>Activate the encrypted partitions (prompts for password):<br>
<pre><code>cryptsetup -i /dev/sdC0/fsworm /dev/sdC0/fscache /dev/sdC0/other<br>
</code></pre>
</li><li>Type <code>exit</code> to resume booting.<br>
</li><li>At the <code>bootargs</code> prompt, enter <code>local!/dev/fs/fscache</code> to continue booting from the encrypted partition.</li></ol>

<b>Note:</b> Encrypted partitians are largely untested. Data integrity is not guaranteed. Use at your own risk.<br>
<br>
Encrypted partitions have not been tested with <code>hjfs</code>.<br>
<br>
See also: <a href='http://man.aiju.de/8/cryptsetup'>cryptsetup(8)</a>


<a href='fqa.md'>Index</a> <a href='fqa3.md'>To Section 3 - Hardware</a> <a href='fqa5.md'>To Section 5 - Building the System from Source</a>