[Index](fqa.md) [To Section 8 - Using 9front](fqa8.md)

# 9 - Troubleshooting #

![http://i.intma.in/http://www.oilempire.us/oil-jpg/27b.jpg](http://i.intma.in/http://www.oilempire.us/oil-jpg/27b.jpg)

## Table of Contents ##

[9.1 - First](fqa9#9.1_-_First.md)

[9.2 - Booting](fqa9#9.2_-_Booting.md)

[9.2.2 - Break into a shell](fqa9#9.2.2_-_Break_into_a_shell.md)

[9.2.3 - Editing plan9.ini](fqa9#9.2.3_-_Editing_plan9.ini.md)

[9.2.4 - Boot media not recognized](fqa9#9.2.4_-_Boot_media_not_recognized.md)

[9.2.5 - I moved my hard drive between ports](fqa9#9.2.5_-_I_moved_my_hard_drive_between_ports.md)

[9.3 - Graphics](fqa9#9.3_-_Graphics.md)

[9.3.1 - Rio fails to start](fqa9#9.3.1_-_Rio_fails_to_start.md)

[9.4 - Networking](fqa9#9.4_-_Networking.md)

[9.4.1 - Networking is not working](fqa9#9.4.1_-_Networking_is_not_working.md)

[9.4.2 - Cannot resolve domain names](fqa9#9.4.2_-_Cannot_resolve_domain_names.md)

[9.4.3 - /mnt/web/clone does not exist](fqa9#9.4.3_-_/mnt/web/clone_does_not_exist.md)

[9.4.4 - PCMCIA WiFi stopped working after reboot](fqa9#9.4.4_-_PCMCIA_WiFi_stopped_working_after_reboot.md)

[9.5 - USB](fqa9#9.5_-_USB.md)

[9.5.1 - Devices not recognized or not working](fqa9#9.5.1_-_Devices_not_recognized_or_not_working.md)

[9.5.2 - System freezes after showing memory sizes](fqa9#9.5.2_-_System_freezes_after_showing_memory_sizes.md)

[9.6 - auth](fqa9#9.6_-_auth.md)

[9.6.1 - secstore: can't dial tcp!$auth!5356](fqa9#9.6.1_-_secstore:_can't_dial_tcp!$auth!5356.md)

<img src='http://9front.org/img/methods.jpg' height='500'>

<h2>9.1 - First</h2>
<ul><li>STATE YOUR ASSUMPTIONS.<br>
</li><li><code>cat /etc/os-release</code> to verify you are not, in fact, running Ubuntu Linux with a Plan 9 theme.<br>
</li><li>Are you running <a href='http://swtch.com/drawterm/'>drawterm</a>?<br>
</li><li>Verify your OpenBSD configuration.<br>
</li><li>Before reporting a bug, try the latest <a href='http://code.google.com/p/plan9front/wiki/mirrors'>ISO image</a>.<br>
</li><li>MAKE SENSE.</li></ul>

<img src='http://9front.org/img/yesno.jpg'>

<ul><li>When all else fails, see: <a href='fqa2#2.4_-_Reporting_Bugs.md'>2.4 - Reporting Bugs</a></li></ul>

<h2>9.2 - Booting</h2>
<h3>9.2.1 - Boot parameters</h3>
<ul><li>Immediately after the BIOS screen, hit any key until you see the <code>&gt;</code> prompt. From there, values from <a href='http://man.aiju.de/8/plan9.ini'>plan9.ini</a> may be temporarily added or changed (see <a href='http://man.aiju.de/8/9boot'>9boot(8)</a>).<br>
</li><li>Boot parameters beginning with a <code>*</code> are interpreted by the kernel. All other parameters are passed as enviroment variables to the boot process.<br>
</li><li>Adding or changing a parameter<br>
<pre><code>param=value<br>
</code></pre>
</li><li>Removing a parameter<br>
<pre><code>clear param=<br>
</code></pre>
</li><li>When finished, type <code>boot</code> to resume booting.</li></ul>

<h3>9.2.2 -  Break into a shell</h3>
<ul><li>At the <code>[bootargs]</code> prompt, type <code>!rc</code> and hit enter to break into a shell. Type <code>exit</code> to return to the <code>[bootargs]</code> prompt.</li></ul>

<h3>9.2.3 - Editing plan9.ini</h3>
<ul><li>It is not possible to edit <a href='http://man.aiju.de/8/plan9.ini'>plan9.ini</a> stored on the ISO, but parameters can be changed temporarily before booting. See above.<br>
</li><li>On a harddrive installation, <a href='http://man.aiju.de/8/plan9.ini'>plan9.ini</a> is stored with the bootloader and the kernel in a small FAT partition called <code>9fat</code> at the beginning of the <code>plan9</code> partition. The <code>9fat</code> can be mounted by executing <code>9fs 9fat</code> from the livecd or the installed system. The file <code>/n/9fat/plan9.ini</code> can then be edited with a text editor like <a href='http://man.aiju.de/1/acme'>acme(1)</a>, <a href='http://man.aiju.de/1/sam'>sam(1)</a> or <a href='http://man.aiju.de/1/ed'>ed(1)</a>.<br>
</li><li>If your change to <a href='http://man.aiju.de/8/plan9.ini'>plan9.ini</a> or the <code>9fat</code> made the system unbootable, it is always possible to manually override parameters on the <code>&gt;</code> prompt (see above) or start the system from the livecd and pick your installed cwfs or hjfs partition on the <code>[bootargs]</code> prompt (example: <code>local!/dev/sdC0/fscache</code>).</li></ul>

<h3>9.2.4 - Boot media not recognized</h3>
<ul><li>Break into a shell, then <code>grep -n '^01' '#$/pci/'*ctl</code> to get the pci vid/did of the installed disk controllers. then look in the sd drivers to see if the controller is already recognized.<br>
</li><li>Sometimes, there is a problem with the drive, not the controller. <code>cat /dev/sd*/ctl</code> to get the status of the individual drives.<br>
</li><li>Try different BIOS settings like AHCI/IDE mode.<br>
</li><li>Try the USB troubleshooting steps (see below). Sometimes USB problems prevent unrelated devices from working properly.</li></ul>

<h3>9.2.5 - I moved my hard drive between ports</h3>
If your filesystem is <a href='http://man.aiju.de/4/cwfs'>cwfs(4)</a>:<br>
<br>
<ul><li>Let's assume it went from sdE0 to sdE1.<br>
</li><li>At the bootargs prompt: <code>local!/dev/sdE1/fscache -c</code>
</li><li>filsys main c(/dev/sdE1/fscache)(/dev/sdE1/fsworm)<br>
</li><li>filsys dump o<br>
</li><li>filsys other /dev/sdE1/other<br>
</li><li>end</li></ul>

<h2>9.3 - Graphics</h2>
<h3>9.3.1 - Rio fails to start</h3>
<ul><li>See the discussion of graphics in the <a href='fqa4.md'>9front Installation Guide</a> section. When you find a working mode, update your <a href='http://man.aiju.de/8/plan9.ini'>plan9.ini</a>.</li></ul>

<h2>9.4 - Networking</h2>
<h3>9.4.1 - Networking is not working</h3>
See: <a href='fqa6#6.2.8_-_Verifying_network_settings.md'>6.2.8 - Verifying network settings</a>

<h3>9.4.2 - Cannot resolve domain names</h3>
<ul><li>If ndb/dns is running but you are still unable to resolve domains, you can try adding a DNS server directly to <code>/net/ndb</code>.</li></ul>

See: <a href='fqa6#6.2.5_-_DNS_Resolution.md'>6.2.5 - DNS Resolution</a>

<h3>9.4.3 - /mnt/web/clone does not exist</h3>
Programs that require <a href='http://man.aiju.de/4/webfs'>webfs(4)</a> to be running require webfs(4) to be running.<br>
<br>
See: <a href='http://man.aiju.de/1/hget'>hget(1)</a>, <a href='http://man.aiju.de/1/mothra'>mothra(1)</a>

<h3>9.4.4 - PCMCIA WiFi stopped working after reboot</h3>
<ul><li>Do <code>fshalt</code> and power down completely instead of just rebooting with <code>fshalt -r</code>.</li></ul>

<h2>9.5 - USB</h2>
<h3>9.5.1 - Devices not recognized or not working</h3>
<ul><li>Break into a shell, or simply type in a <code>rio</code> window: <code>cat /dev/usbevent</code> and try plugging in a USB device. If the devices where detected, some output should appear on screen. This doesnt mean we have a working driver for it but verifies that the USB controller and HUB driver recognized the device.<br>
</li><li>Dump USB controller status to the console with <code>echo dump &gt;/dev/usb/ctl</code> after that, you might recover the output from <code>/dev/kmesg</code> or run <code>cat /dev/kprint</code> in a separate rio window to not spill it all over the screen. Check the <code>nintr</code> and <code>tdintr</code> counters to see if they are all zero. If thats the case, then this is might be a interrupt routing problem sometimes caused by broken/incomplete BIOS MP tables. See below.<br>
</li><li>If USB keyboard is the only option, try to enable PS2 emulation in the BIOS and disable kernel usb support. See below.<br>
</li><li>if the machine employs a USB3.0 (xHCI) controller, try to disable USB3.0 support in BIOS as we dont have a driver for the xhci yet.</li></ul>

<h3>9.5.2 - System freezes after showing memory sizes</h3>
<ul><li>The boot parameter <code>*acpi=1</code> might solve interrupt routing problems in the case of broken or incomplete BIOS MP tables. (acpi is still experimental)<br>
</li><li>Try the boot parameter <code>*nomp=</code> to disable multiprocessor mode.<br>
</li><li>Try the boot parameter <code>*nousbehci=</code> (This disables USB 2.0.)<br>
</li><li>Try the boot parameter <code>*nousbuhci=</code>
</li><li>Try the boot parameter <code>*nousbohci=</code>
</li><li>Try the boot parameter <code>*nousbprobe=</code> (This disables USB completely)</li></ul>

<h2>9.6 - auth</h2>
<h3>9.6.1 - secstore: can't dial tcp!$auth!5356</h3>
By default, 9front <code>factotum</code> attempts to dial the <code>secstore</code> server. If no <code>secstore</code> server is configured, the following error message will appear.<br>
<pre><code>secstore: can't dial tcp!$auth!5356: cs: can't translate address: dns: resource does not exist; negrcode<br>
</code></pre>
If you are not using <code>secstore</code> it is safe to ignore this error.<br>
<br>
See: <a href='http://man.aiju.de/8/auth'>auth(8)</a>, <a href='http://man.aiju.de/1/secstore'>secstore(1)</a>

<a href='fqa.md'>Index</a> <a href='fqa8.md'>To Section 8 - Using 9front</a>