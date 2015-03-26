[Index](fqa.md) [To Section 2 - Getting to know 9front](fqa2.md) [To Section 4 - 9front Installation Guide](fqa4.md)

# 3 - Hardware #

## Table of Contents ##
[3.1 - Selecting Hardware](fqa3#3.1_-_Selecting_Hardware.md)

[3.2 - Known Working Hardware](fqa3#3.2_-_Known_Working_Hardware.md)

[3.3 - Virtual Machines](fqa3#3.3_-_Virtual_Machines.md)

[3.3.1 - Qemu](fqa3#3.3.1_-_Qemu.md)

[3.3.1.1 - Installation](fqa3#3.3.1.1_-_Installation.md)

[3.3.1.2 - Post-Installation Booting](fqa3#3.3.1.2_-_Post-Installation_Booting.md)

[3.3.1.2.1 - Multiboot](fqa3#3.3.1.2.1_-_Multiboot.md)

[3.3.1.4 - Networking](fqa3#3.3.1.4_-_Networking.md)

[3.3.1.4.1 - Linux VDE](fqa3#3.3.1.4.1_-_Linux_VDE.md)

[3.3.1.4.2 - OpenBSD tun(4)](fqa3#3.3.1.4.2_-_OpenBSD_tun(4).md)

[3.3.1.4.3 - Windows TAP](fqa3#3.3.1.4.3_-_Windows_TAP.md)

[3.3.1.5 - Audio](fqa3#3.3.1.5_-_Audio.md)

[3.3.1.6 - Graphics](fqa3#3.3.1.6_-_Graphics.md)

[3.3.2 - Virtualbox](fqa3#3.3.2_-_Virtualbox.md)

[3.3.2.1 - Ethernet](fqa3#3.3.2.1_-_Ethernet.md)

[3.3.2.2 - Audio](fqa3#3.3.2.2_-_Audio.md)

[3.3.2.3 - Graphics](fqa3#3.3.2.3_-_Graphics.md)

[3.3.2.4 - Known Working Versions](fqa3#3.3.2.4_-_Known_Working_Versions.md)

[3.3.3 - Virtio](fqa3#3.3.3_-_Virtio.md)

## 3.1 - Selecting Hardware ##
Selecting appropriate hardware to run your 9front system on is important, as it can mean the difference between success and failure of a project.

If you are shopping for a new PC, whether you are buying it piece by piece or completely pre-built, you want to make sure first that you are buying reliable parts. In the PC world, this is not easy. **Bad or otherwise unreliable or mismatched parts can make 9front run poorly and crash often.** The best advice we can give is to be careful, and buy brands and parts that have been reviewed by an authority you trust. Sometimes, a higher-price machine is a better quality machine. Other times, it is simply more expensive.

There are certain things that will help bring out the maximum performance of your system:

  * **Let the application choose the hardware:** It is usually better to make an adjustment to the hardware you were planning on using rather than compromising on your application design because you have something you "really wanted to use."

  * **Identify your bottlenecks:** Don't pay extra for the cutting-edge processor if your application is restricted by disk I/O. Don't pay for fast disk if your system is restricted by network speed. Don't pay for much of anything if your bottleneck is a 300bps dial-up line.

  * **Keep it simple:** Simple hardware usually has simple problems. Complex hardware that isn't supposed to ever break may take you a long time to repair when it breaks anyway.

  * **Use hardware you understand, or learn the new hardware before you implement a production system:** Regardless of the technical merits of the hardware, committing to use a particular type of hardware before you have become familiar with it, both how it works and how it fails, is foolish.

  * **Avoid cheap network adapters:** 9front supports a plethora of cheap network adapters. These adapters work great in home systems, and low or moderate throughput business and research environments. But, if you need high throughput and low impact on your server, you are better off buying a quality network adapter. Unfortunately, some name-brand adapters are not much better than the cheap adapters, and some potentially good adapters do not have accurate documentation available to write good drivers. Gigabit adapters often perform better than 10Mbps/100Mbps adapters, even when used on slower speed networks, due to superior buffering.

Check [FQA Section 3.2 - Known Working Hardware](fqa3#3.2_-_Known_Working_Hardware.md) as well as the [various](http://www.plan9.bell-labs.com/wiki/plan9/Supported_PC_hardware) [supported](http://www.plan9.bell-labs.com/wiki/plan9/other_hardware) [hardware](http://www.plan9.bell-labs.com/wiki/plan9/virtual_machines) pages on the Bell Labs Plan 9 wiki to help determine if your hardware or VM is supported.

## 3.2 - Known Working Hardware ##
This list adds to the [various](http://www.plan9.bell-labs.com/wiki/plan9/Supported_PC_hardware) [supported](http://www.plan9.bell-labs.com/wiki/plan9/other_hardware) [hardware](http://www.plan9.bell-labs.com/wiki/plan9/virtual_machines) pages on the Plan 9 wiki.

Some drivers and ther options are also documented in
[plan9.ini(8)](http://man.aiju.de/8/plan9.ini).

See [features](features.md) for information about new hardware drivers in 9front.

# Audio #
<img src='http://9front.org/img/soundblaster.jpg' height='500'>
<h3>Integrated</h3>
<h4>Intel 888 Microsoft UAA bus for HD audio</h4>
<ul><li>vid/did: 8086/284b</li></ul>

<h4>Intel 82801CA/CAM AC97</h4>
<ul><li>vid/did: 8086/2485</li></ul>

<h4>Intel 82801 DB DBM/DA AC 97</h4>
<ul><li>vid/did: 8086/24c5</li></ul>

<h4>Intel 486486 82801IB/IR/IH HD Audio</h4>
<ul><li>vid/did: 8086/293e</li></ul>

<h4>Intel HD NM10/ICH7</h4>
<ul><li>vid/did: 8086/27d8</li></ul>

<h4>Intel HD 6 Series/C200 Series</h4>
<ul><li>vid/did: 8086/1c20</li></ul>

<h4>Intel HD 7 Series/C210 Series</h4>
<ul><li>vid/did: 8086/1e20</li></ul>

<h1>Graphics</h1>
<img src='https://c2.staticflickr.com/8/7568/15651422014_7121de1a32_z.jpg' />
<h3>AGP</h3>
<h4>NVidia  GeForce FX 5200 128MB VGA output</h4>
<ul><li>vid/did: 10de/0322<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/emachines/t3302/vga-p'>VGA dump</a>
</li><li>monitor=vesa vgasize=1600x1200x32<br>
</li><li>monitor=dellst2210 vgasize=1920x1080x32</li></ul>

<h4>NVidia GeForce FX 5700</h4>
<ul><li>vid/did: 10de/0341<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/emachines/t3302/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1600x1200x32<br>
</li><li>monitor=dellst2210 vgasize=1920x1080x32</li></ul>

<h3>Integrated</h3>
<h4>ATI Mobility Radeon 7500 128MB DVI/VGA output</h4>
<ul><li>vid/did: 1002/4c57<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t42/2373-bk4/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1024x768x32</li></ul>

<h4>ATI Mobility Radeon FireGL V3200/X600</h4>
<ul><li>vid/did: 1002/3154<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t43p/2669-a92/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1600x1200x32</li></ul>

<h4>ATI RS880</h4>
<ul><li><a href='http://plan9.stanleylieber.com/hardware/hp/6005sff/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1280x1024x32</li></ul>

<h4>ATI X1300</h4>
<ul><li><a href='http://plan9.stanleylieber.com/hardware/thinkcentre/m55/8810-d3u/vesa.x1300'>VESA BIOS modes</a></li></ul>

==== Intel Mobile 945GM/GMS/GME, 943/940GML Express<br>
<ul><li>vid/did: 8086/27a6<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x61t/6363-cto/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1400x1050x32<br>
</li><li>monitor=x60t vgasize=1400x1050x32</li></ul>

<h4>Intel X3100/GM965/PM965/GL960</h4>
<ul><li>vid/did: 8086/2a03<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t61/7659-cto/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1680x1050x32</li></ul>

<h4>Intel Mobile Intel 4 Series 4500MHD</h4>
<ul><li>vid/did: 8086/2a42, 8086/2a43<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x301/2776-p6u/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1440x900x32<br>
</li><li>monitor=x301 vgasize=1440x900x32</li></ul>

<h4>Intel HD 3rd Gen Core processor Graphics Controller</h4>
<ul><li>vid/did: 8086/0166<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x230/2306-cto/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=vesa vgasize=1366x768x32<br>
</li><li>monitor=x230 vgasize=1366x768x32</li></ul>

<h4>S3 SuperSavage IX/C 16MB</h4>
<ul><li>vid/did: 5333/8c2e<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t23/sysinfo'>VESA BIOS modes</a>
</li><li>monitor=t23 vgasize=1024x768x32<br>
</li><li>monitor=vesa vgasize=1024x768x32</li></ul>

<h3>PCI Express</h3>
<h4>NVidia GeForce 6200 LE</h4>
<ul><li>vid/did: 10de/0163<br>
</li><li>monitor=e228wfp vgasize=1680x1050x32</li></ul>

<h4>NVidia GeForce 8400 GS</h4>
<ul><li>vid/did: 10de/0422<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkcentre/m55/8810-d3u/vesa.8400gs'>VESA BIOS  modes</a>
</li><li>monitor=vesa vgasize=1680x1050x32</li></ul>

<h4>NVidia GeForce 8600 GT</h4>
<ul><li>vid/did: 10de/0402<br>
</li><li>monitor=vesa vgasize=1600x1200x32</li></ul>

<h4>NVidia GeForce GTX 550</h4>
<ul><li>vid/did: 10de/0bee<br>
</li><li>monitor=vesa vgasize=1600x1200x32</li></ul>

<h1>Networking</h1>
<h2>Ethernet</h2>
<h3>Integrated</h3>
<h4>Broadcom BCM5751M NetXtreme Gigabit</h4>
<ul><li>vid/did: 14e4/167d<br>
</li><li>tested 100/1000 mbps</li></ul>

<h4>Broadcom BCM5755/5780 NetXtreme Gigabit</h4>
<ul><li>vid/did: 14e4/167b<br>
</li><li>tested 100/1000 mbps</li></ul>

<h4>Broadcom BCM5782 NetXtreme Gigabit</h4>
<ul><li>vid/did: 14e4/1696</li></ul>

<h4>Intel 82540EP Gigabit</h4>
<ul><li>vid/did: 8086/101e<br>
</li><li>tested 100/1000 mbps</li></ul>

<h4>Intel 82562ET</h4>
<ul><li>tested 10/100 mbps</li></ul>

<h4>Intel 82566MM Gigabit</h4>
<ul><li>vid/did: 8086/1049<br>
</li><li>tested 100/1000 mbps</li></ul>

<h4>Intel 82567LM 82567LM-2 Gigabit</h4>
<ul><li>vid/did: 8086/10f5<br>
</li><li>tested 100/1000 mbps</li></ul>

<h4>Intel 82573L Gigabit</h4>
<ul><li>vid/did: 8086/109a<br>
</li><li>tested: 100/1000 mbps</li></ul>

<h4>Intel 82579LM Gigabit</h4>
<ul><li>vid/did: 8086/1502<br>
</li><li>tested: 100/1000 mbps</li></ul>

<h4>Intel 82801CAM PRO/100 VE</h4>
<ul><li>vid/did: 8086/1031<br>
</li><li>tested 10/100 mbps</li></ul>

<h3>USB</h3>
<h4>Beceem Communications CLEAR Stick</h4>
<ul><li>vid/did 198f:8160<br>
</li><li>This is a WiMAX device that appears as a USB CDC Ethernet device<br>
</li><li>Works with nusb/ether<br>
<h4>RNDIS</h4>
</li><li>Android phones should work<br>
</li><li>Works with nusb/ether</li></ul>

<h2>Wifi</h2>
<h3>Bridge (external)</h3>
<h4>Iogear GWU627</h4>
<ul><li>802.11n<br>
</li><li>connect ethernet port to GWU627</li></ul>

<h4>Vonets VAP11G</h4>
<ul><li>802.11g<br>
</li><li><a href='http://www.vonets.com/products/wifi-bridge-vap11g.htm'>manufacturer website</a>
</li><li>connect ethernet port to VAP11G</li></ul>

<h3>Mini-PCI</h3>
<h4>Actiontec 800MIP</h4>
<ul><li>802.11b<br>
</li><li><a href='http://www.thinkwiki.org/wiki/IBM_High_Rate_Wireless_LAN_Mini-PCI_Adapter_III'>probably this chip</a>
</li><li>often branded Lucent WaveLAN<br>
</li><li>ether0=type=wavelanpci ssid=MESH station=T42 irq=11<br>
<h4>Ralink RT2860</h4>
</li><li>802.11b</li></ul>

<h3>Mini-PCI Express</h3>
<h4>Intel WiFi Link 1000/4965/5100/5300 AGN</h4>
<ul><li>802.11g<br>
</li><li>ether0=type=iwl essid=MESH<br>
<h4>Intel Centrino Wireless-N 100</h4>
</li><li>802.11g<br>
</li><li>ether0=type=iwl essid=MESH<br>
<h4>Intel Centrino Ultimate-N (iwl-6000)</h4>
</li><li>802.11g<br>
</li><li>ether0=type=iwl essid=MESH<br>
<h4>Intel Centrino Advanced-N 6205 Taylor Peak (iwl-6005)</h4>
</li><li>vid/did: 8086/0085<br>
</li><li>802.11g<br>
</li><li>ether0=type=iwl essid=MESH<br>
<h4>Ralink RT3090</h4>
</li><li>802.11g</li></ul>

<h3>PCI</h3>
<h4>Ralink RT3090</h4>
<ul><li>802.11b</li></ul>

<h3>PCMCIA</h3>
<h4>Linksys WPC11</h4>
<ul><li>802.11b<br>
</li><li>Prism 2.5<br>
</li><li>ISL37300P<br>
</li><li>RevA</li></ul>

<h4>Lucent WaveLAN PC24E-H-FC</h4>
<ul><li>802.11b<br>
</li><li>ether0=type=wavelan essid=MESH crypt=off station=x61 irq=11</li></ul>

<h1>Tablets</h1>
<h2>Serial</h2>
<h3>Integrated</h3>
<h4>Wacom WACF004</h4>
<ul><li>Thinkpad X4<code>*</code> series tablets<br>
</li><li><code>aux/wacom; aux/tablet &amp;</code></li></ul>

<h4>Wacom WACF008</h4>
<ul><li>Thinkpad X6<code>*</code> series tablets<br>
</li><li><code>aux/wacom; aux/tablet &amp;</code></li></ul>

<h1>Laptops</h1>
<img src='http://img.stanleylieber.com/src/12609/img/small.1319868758.png'>
<h2>Acer</h2>
<h3>Aspire 5100 (donated by some poor kid)</h3>
<ul><li>cpu: 1795MHz AuthenticAMD AMD-K8, works<br>
</li><li>ethernet: rtl8139 100Mbps, works<br>
</li><li>keyboard and touchpad, works<br>
</li><li>graphics: RS482M ATI RADEON Xpress Series, VESA works at 1024x768 (native resolution not in VESA BIOS); radeon driver untested<br>
</li><li>wifi: Atheros AR5005G, does not work<br>
</li><li>audio: SB450 High Definition Audio Controller<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/acer/aspire/5100/sysinfo'>sysinfo</a></li></ul>

<h2>Thinkpad</h2>
<img src='http://9front.org/img/2001thinkpad01.jpg' />
<img src='http://9front.org/img/2001thinkpad02.jpg' />
<h3><a href='https://code.google.com/p/plan9front/source/detail?r=400'>R400</a></h3>
<h4>7439-1DG</h4>
<ul><li>cpu: 2527MHz GenuineIntel Core 2/Xeon (cpuid: AX 0x10676 CX 0x8E3FD DX 0xBFEBFBFF)<br>
</li><li>graphics: Mobile Intel GM45 Express/4500MHD, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1440x900x32<br>
</li><li>ethernet: Intel 82567LM 82567LM-2 Gigabit (10/100/1000), works<br>
</li><li>wifi: Intel Wifi Link 5100 AGN  Mini-PCI Express, works<br>
</li><li>disk controller: Intel ICH9M/ME ICH9M/ME AHCI, works<br>
</li><li>dvd: MATSHITADVD-RAM UJ870A SB04 HE34  068E34  068597, works<br>
</li><li>audio: Intel 486486 82801IB/IR/IH HD Audio, works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet works with <code>*acpi=1</code>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/r400/7439-1dg/sysinfo'>sysinfo</a>
<h3>T23</h3>
<h4>2647-HSU</h4>
</li><li>cpu: Intel Mobile Pentium III-M 866 MHz, 1.2 GHz<br>
</li><li>graphics: S3 SuperSavage IX/C 16MB, VGA 1024x768x32, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1024x768x32<br>
</li><li>ethernet: Intel 82801CAM PRO/100 VE or Intel 82562ET (10/100), works<br>
</li><li>wifi: Actiontec 800MIP (branded Lucent WaveLAN) Mini-PCI, works (<a href='http://www.thinkwiki.org/wiki/IBM_High_Rate_Wireless_LAN_Mini-PCI_Adapter_III'>probably this chip</a>)<br>
</li><li>audio: AC97, works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t23/2647-hsu/sysinfo'>sysinfo</a>
<h3>T42</h3>
<h4>2373-BK4</h4>
</li><li>cpu: Intel Pentium M (Dothan) 1.7 GHz<br>
</li><li>graphics: ATI Mobility Radeon 7500 32MB, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1024x768x32<br>
</li><li>ethernet: Intel Gigabit Ethernet (10/100/1000), works<br>
</li><li>wifi: IBM 11a/b/g Mini-PCI, does not work; replaced with Actiontec 800MIP (branded Lucent WaveLAN) Mini-PCI, works (<a href='http://www.thinkwiki.org/wiki/IBM_High_Rate_Wireless_LAN_Mini-PCI_Adapter_III'>probably this chip</a>)<br>
</li><li>disk controller: 82801DBM (ICH4-M), IDE DMA works<br>
</li><li>audio: AC97, works<br>
<h3>T43</h3>
</li><li>graphics:<br>
</li><li>ethernet: BCM5751M (10/100/1000), works<br>
</li><li>audio: AC97, works<br>
</li><li>wifi:<br>
<h3>T43p</h3>
<h4>2669-A92</h4>
</li><li>cpu: Intel Pentium M (Dothan) 2.0 GHz (cpuid: AX 0x06D8 CX 0x0180 DX 0xAFE9FBFF)<br>
</li><li>graphics: ATI Mobility Radeon FireGL V3200/X600, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1600x1200x32 with internal LCD<br>
</li><li>ethernet: Broadcom BCM5751M (10/100/1000), works<br>
</li><li>wifi: replaced with Vonets VAP11G, works<br>
</li><li>disk controller: Intel 82801FBM SATA AHCI (ICH6-M): untested<br>
</li><li>usb: works<br>
</li><li>scram works with <code>*acpi=1</code>
</li><li>mouse button 2 works with trackpad disabled in BIOS<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t43p/2669-a92/plan9.ini'>plan9.ini</a>, <a href='http://plan9.stanleylieber.com/hardware/thinkpad/t43p/2669-a92/sysinfo'>sysinfo</a>
</li><li>note: test unit has no hard drive, PXE booted over Iogear GWU627 wifi bridge<br>
<h3>T60p</h3>
<h4>2007-94U</h4>
</li></ul><ul><li>cpu: Intel Core Duo (Yonah) 2.16GHz (cpuid: AX 0x06E8 CX 0xC1A9 DX 0xBFE9FBFF)<br>
</li><li>graphics: ATI MOBILITY FireGL V5200 <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1600x1200x32 with internal LCD<br>
</li><li>audio: Intel BA101897 IDT High Definition, untested<br>
</li><li>ethernet: Intel 82573L Intel PRO/1000 PL (10/100/1000), works<br>
</li><li>wifi: Intel(R) PRO/Wireless 3945ABG, does not work<br>
</li><li>disk controller: Intel 82801GB/GBM PATA100, 82801GBM/GHM AHCI, works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet, usb works with <code>*acpi=</code>
</li><li>mouse button 2 works with trackpad disabled in BIOS<br>
<ul><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t60p/2007-94u/plan9.ini'>plan9.ini</a>
<h3>T61</h3>
<h4>7659-CTO</h4>
</li><li>cpu: Intel Core 2 Duo (Merom) 2.0 GHz FSB, 2-4MB L2 Cache CPU<br>
</li><li>graphics: Intel GMA X3100, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1280x800x32 with internal LCD; VESA 1680x1050x32 with VGA or Mini Doc DVI output and external monitor<br>
</li><li>ethernet: Intel 82566MM (10/100/1000), works<br>
</li><li>wifi: Intel Wireless WiFi Link 4965 AGN Mini-PCI Express, should work<br>
</li><li>disk controller: Intel 82801HBM/HEM PATA, Intel 82801HBM SATA AHCI (ICH8-M): IDE DMA works, SATA works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet, usb works with <code>*acpi=</code>
</li><li>mouse button 2 works with trackpad disabled in BIOS<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t61/7659-cto/plan9.ini'>plan9.ini</a>, <a href='http://plan9.stanleylieber.com/hardware/thinkpad/t61/7659-cto/sysinfo'>sysinfo</a>
<h4>7661-12U</h4>
</li><li>cpu: Intel Core 2 Duo (Merom) 2.0 GHz FSB, 2-4MB L2 Cache CPU<br>
</li><li>graphics: Intel GMA X3100, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1280x800x32 with internal LCD; VESA 1680x1050x32 with VGA or Mini Doc DVI output and external monitor<br>
</li><li>ethernet: Intel 82566MM (10/100/1000), works<br>
</li><li>wifi: Intel PRO/Wireless 3945ABG Mini-PCI Express, does not work; replaced with Wavelan PC24E-H-FC PCMCIA, works<br>
</li><li>disk controller: Intel 82801HBM/HEM PATA, Intel 82801HBM SATA AHCI (ICH8-M): IDE DMA works, SATA works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet, usb works with <code>*acpi=</code>
</li><li>mouse button 2 works with trackpad disabled in BIOS<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t61/7661-12u/plan9.ini'>plan9.ini</a>, <a href='http://plan9.stanleylieber.com/hardware/thinkpad/t61/7661-12u/sysinfo'>sysinfo</a>
<h3>T400</h3>
<h4>6475-EC7</h4>
</li><li>cpu: 2261MHz GenuineIntel Core 2/Xeon (cpuid: AX 0x10676 CX 0x8E3FD DX 0xBFEBFBFF)<br>
</li><li>graphics: Intel Corporation Mobile 4 Series, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1440x900x32 with internal LCD<br>
</li><li>ethernet: i82567: 1000Mbps, works<br>
</li><li>wifi: Intel WiFi Link 5100 AGN Mini-PCI Express, works<br>
</li><li>disk controller: Intel ICH9M/ME AHCI, works<br>
</li><li>audio: Intel HDA, should work<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t400/6475-ec7/sysinfo'>sysinfo</a>
<h3>T410i</h3>
<h4>2518-4QG</h4>
</li><li>cpu: Intel(R) Core(TM) i5 CPU M 430 @ 2.27GHz<br>
</li><li>graphics: Intel Graphics Media Accelerator HD, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1280x800x32 with internal LCD<br>
</li><li>ethernet: Intel 82577LM Gigabit, works<br>
</li><li>wifi: unknown, reportedly works<br>
</li><li>audio: unknown, reportedly works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t410i/2518-4qg/sysinfo'>sysinfo</a>
<h3>T420s</h3>
<h4>4171-53U</h4>
</li><li>cpu: Intel® Core™ i5-2540M (2.6GHz, 3MB L3, 1333MHz FSB) (cpuid: AX 000206A7 CX 17BAE3FF DX BFEBFBFF)<br>
</li><li>graphics: Intel HD Graphics 3000 (integrated Sandy Bridge GPU), <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> monitor=vesa vgasize=1600x900x32<br>
</li><li>ethernet: Intel 82579LM Gigabit, works<br>
</li><li>audio: Intel HD 6 Series/C200 Series, works<br>
</li><li>wifi: Intel Centrino Advanced-N 6205 Taylor Peak, etheriwl (firmware: iwn-6005), works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/t420s/4171-53u/sysinfo'>sysinfo</a>
<img src='http://plan9.stanleylieber.com/hardware/thinkpad/t420s/4171-53u/img/t420s.jpg'>
<h3>X41 tablet</h3>
</li><li>cpu: Intel Pentium M (Dothan) 1.6GHz LV (778) L2 2 MB cache<br>
</li><li>graphics: Intel GMA900, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1024x768x32<br>
</li><li>tablet: WACF004, works<br>
</li><li>ethernet: BCM5751M (10/100/1000), works<br>
</li><li>wifi: Intel PRO/Wireless 2915ABG Mini-PCI, does not work<br>
<h3>X60s</h3>
<h4>1704-GL5</h4>
</li><li>coreboot<br>
</li><li>cpu cpu0: 1663MHz GenuineIntel P6 (cpuid: AX 0x06E8 CX 0xC1A9 DX 0xBFE9FBFF)<br>
</li><li>graphics: Intel 945GM, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1024x768x16<br>
</li><li>ethernet: Intel 82573L Intel PRO/1000 PL, works<br>
</li><li>audio: Intel HDA, untested<br>
</li><li>wifi: Ralink RT3090, works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x60s/1704-gl5/sysinfo'>sysinfo</a>
<h3>X60 Tablet</h3>
<h4>6363-CTO</h4>
</li></ul></li><li>cpu: Intel Core Duo (Yonah) L2400 LV 1.66 GHz (2MB Cache) cpu0: 1663MHz GenuineIntel P6 (AX 000006EC CX 0000C1A9 DX BFE9FBFF)<br>
</li><li>graphics: Intel Graphics Media Accelerator 950, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> monitor=x60t vgasize=1400x1050x32; monitor=vesa vgasize=1280x1024x32 (native 1400x1050 resolution not in VESA BIOS)<br>
</li><li>tablet: WACF008, untested<br>
</li><li>ethernet: Intel 82573L (10/100/1000), works<br>
</li><li>audio: Intel HD Audio with AD1981HD codec, untested<br>
</li><li>wifi: Intel PRO/Wireless 3945ABG Mini-PCI Express, does not work; replaced with Intel WiFi Link 5100 AGN, works (flashed with <a href='http://plan9.stanleylieber.com/hardware/thinkpad/x60t/6363-cto/bios.1.15_7juj13us_LENOVO_SLIC_SSV2_WL_removed.zip'>custom BIOS</a> to remove WiFi card whitelist)<br>
</li><li>disk controller: Intel 82801GBM/GHM (ICH7-M Family) SATA Controller <a href='AHCI.md'>mode</a>, untested<br>
</li><li>mp: mp + sata, ethernet works with <code>*acpi=</code>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x60t/6363-cto/sysinfo'>sysinfo</a>
<img src='https://c2.staticflickr.com/8/7524/16313864181_7f8aabd9e8_z.jpg' />
<h3>X61 Tablet</h3>
<h4>7767-01U</h4>
<ul><li>cpu: Intel Core 2 Duo CPU L7700 (1.80 GHz)<br>
</li><li>graphics: Intel GMA X3100, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1024x768x32<br>
</li><li>tablet: WACF008, works<br>
</li><li>ethernet: Intel 82566MM (10/100/1000), works<br>
</li><li>audio: Intel HDA, works<br>
</li><li>wifi: Intel PRO/Wireless 3945ABG Mini-PCI Express, does not work; replaced with Wavelan PC24E-H-FC PCMCIA, works<br>
</li><li>disk controller: Intel 82801HBM SATA (ICH8-M): IDE DMA works, SATA works<br>
</li><li>mp: mp + sata, ethernet works with <code>*acpi=</code>
</li></ul></li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x61t/7767-01u/sysinfo'>sysinfo</a>
<img src='http://plan9.stanleylieber.com/hardware/thinkpad/x61t/7767-01u/img/x61t.jpg' />
<h3>X61s</h3>
<ul><li>cpu: Intel Core 2 Duo<br>
</li><li>graphics: Intel GM965/GL960, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1024x768x32<br>
</li><li>ethernet: Intel 82566MM (10/100/1000), works<br>
</li><li>wifi: Intel PRO/Wireless 4965 AG or AGN <code>[Kedron]</code> Mini-PCI Express, untested, should work<br>
</li><li>disk controller: Intel 82801HBM SATA (ICH8-M): IDE DMA works, SATA works<br>
</li><li>mp: mp + sata, ethernet works with <code>*acpi=</code>
<h3>X131e</h3>
<h4>3368-2FU</h4>
</li><li>cpu: 1397MHz GenuineIntel P6 (cpuid: AX 0x206A7 CX 0x15BAE3BF DX 0xBFEBFBFF)<br>
</li><li>graphics: Intel HD Graphics 3000 <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1366x768x32<br>
</li><li>ethernet: Realtek RTL8167 PCIe Gigabit Ethernet: works<br>
</li><li>audio: Intel HDA, works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x131e/3368-2fu/sysinfo'>sysinfo</a>
<h3>X200</h3>
<h4>7455-A54</h4>
</li><li>cpu: Intel Core 2 Duo<br>
</li><li>graphics: Mobile Intel GMA 4500MHD, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1280x800x32<br>
</li><li>ethernet: Intel 82567LF Gigabit (10/100/1000), works<br>
</li><li>wifi: Intel WiFi Link 5150, works<br>
</li><li>disk controller: Intel ICH9M/ME ICH9M/ME AHCI, works<br>
</li><li>audio: Intel 486486 82801IB/IR/IH HD Audio, works<br>
</li><li>usb: works<br>
</li><li><a href='http://sysinfo.9front.org/src/49/body'>sysinfo</a>
<h3>X200s</h3>
<h4>7466-3SG</h4>
</li><li>cpu: 1862MHz GenuineIntel Core 2/Xeon (cpuid: AX 0x10676 CX 0x8E3FD DX 0xBFEBFBFF)<br>
</li><li>graphics: Mobile Intel GM45 Express/4500, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1280x800x32<br>
</li><li>ethernet: Intel 82567LM 82567LM-2 Gigabit (10/100/1000), works<br>
</li><li>wifi: Intel WiFi Link 5300 AGN Mini-PCI Express, works<br>
</li><li>disk controller: Intel ICH9M/ME ICH9M/ME AHCI, works<br>
</li><li>audio: Intel 486486 82801IB/IR/IH HD Audio, works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet works with <code>*acpi=1</code>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x200s/7466-3sg/sysinfo'>sysinfo</a>
<h3>X201</h3>
<h4>3323-DBG</h4>
</li><li>cpu: 2661MHz GenuineIntel P6<br>
</li><li>graphics: Mobile Intel GMA 5700MHD, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1280x800x32<br>
</li><li>ethernet: Intel Corporation 82577LM Intel 82577LM Gigabit, works<br>
</li><li>wifi: Intel Centrino Ultimate-N 6300 AGN, works<br>
</li><li>disk controller: Intel Corporation PCH (Ibex Peak) SATA AHCI, works<br>
</li><li>audio: Intel HDA, works<br>
</li><li>ssd: INTEL SSDSC2BW180A3L, works<br>
</li><li>usb: works<br>
</li><li><a href='http://sysinfo.9front.org/src/50/body'>sysinfo</a>
<h3>X220</h3>
<h4>4291-4CG</h4>
</li><li>cpu: 2791MHz GenuineIntel P6 (cpuid: AX 0x206A7 CX 0x17BAE3FF DX 0xBFEBFBFF)<br>
</li><li>graphics: Intel HD 3000, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1366x768x32<br>
</li><li>ethernet: Intel 82579 (10/100/1000), works<br>
</li><li>audio: Intel HDA, works<br>
</li><li>wifi: Intel Centrino Advanced-N 6205, works<br>
</li><li>disk controller: works<br>
</li><li>ssd: INTEL SSDSA2BW160G3, works<br>
</li><li>usb: works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x220/4291-4cg/sysinfo'>sysinfo</a>
<img src='http://9front.org/img/chicklet.jpg'>
<h3>X230</h3>
<h4>2306-CTO</h4>
</li><li>cpu: Intel Core i5-3320M (2.60 GHz, 3MB L3, 1600MHz FSB), cpuid: AX 0x306A9 CX 0x77BAE3FF DX 0xBFEBFBFF<br>
</li><li>graphics: Intel HD 3rd Gen Core processor Graphics Controller, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> monitor=x230 vgasize=1366x768x32; monitor=vesa vgasize=1366x768x32<br>
</li><li>ethernet: Intel 82579LM Gigabit (10/100/1000), works<br>
</li><li>wifi: Intel Centrino Advanced-N 6205 Taylor Peak, etheriwl (firmware: iwn-6005), works<br>
</li><li>disk controller: Intel 7 Series Chipset Family 6-port SATA Controller AHCI mode, ahci, works<br>
</li><li>usb: Intel 7 Series/C210 Series Chipset Family USB Enhanced Host Controller #1, ehci, works<br>
</li><li>audio: Intel 7 Series/C210 Series Chipset Family High Definition Audio Controller, works<br>
</li><li>efi: works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x230/2306-cto/sysinfo'>sysinfo</a>, <a href='http://plan9.stanleylieber.com/hardware/thinkpad/x230/2306-cto/plan9.ini'>plan9.ini</a>
<img src='http://plan9.stanleylieber.com/hardware/thinkpad/x230/2306-cto/img/x230.jpg'>
<h3>X230 Tablet</h3>
<h4>3434-CTO</h4>
</li><li>cpu: Intel Core i5-3320M (Ivy Bridge), 2.6 GHz, 3 MB Shared L3 Cache, 2C/4T, 35 W TDP, 22 nm (cpuid: AX 0x306A9 CX 0x77BAE3FF DX 0xBFEBFBFF)<br>
</li><li>graphics: Intel HD 4000, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1366x768x32<br>
</li><li>tablet: USB, untested<br>
</li><li>ethernet: Intel 82579 (10/100/1000), works<br>
</li><li>audio: Intel HDA, works<br>
</li><li>wifi: Intel 802.11b/g/n, might work<br>
</li><li>disk controller: works<br>
</li><li>ssd: SAMSUNG SSD 830 Series CXM03B1Q S0XYNEAC774074 128GB, works<br>
</li><li>usb: disable USB3 in BIOS, works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x230t/3434-cto/sysinfo'>sysinfo</a>
<h3>X301</h3>
<h4>2776-P4U</h4>
</li><li>cpu: Intel Core 2 Duo SU9400 1.4GHz 3MB cache, cpuid: AX 0x1067A CX 0x408E3FD DX 0xBFEBFBFF<br>
</li><li>graphics: Mobile Intel GM45 Express/4500MHD, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> monitor=x301 vgasize=1440x900x32; monitor=vesa vgasize=1440x900x32<br>
</li><li>ethernet: Intel 82567LM 82567LM-2 Gigabit (10/100/1000), works<br>
</li><li>wifi: Intel WiFi Link 5100 AGN Mini-PCI Express, works<br>
</li><li>disk controller: Intel ICH9M/ME ICH9M/ME AHCI, works<br>
</li><li>ssd: Samsung MMCRE64G8MPP-0VA 64GB, works<br>
</li><li>dvd: Matsushita DVD-RAM UJ-844, works<br>
</li><li>audio: Intel HD 486486 82801IB/IR/IH, works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet works with <code>*acpi=1</code>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x301/2776-p4u/sysinfo'>sysinfo</a>, <a href='http://plan9.stanleylieber.com/hardware/thinkpad/x301/2776-p4u/plan9.ini'>plan9.ini</a>
<h4>2776-P6U</h4>
</li><li>cpu: Intel Core 2 Duo SU9400 1.4GHz 3MB cache, cpuid: AX 00010676 CX 0008E3FD DX BFEBFBFF<br>
</li><li>graphics: Mobile Intel GM45 Express/4500MHD, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> monitor=x301 vgasize=1440x900x32; monitor=vesa vgasize=1440x900x32<br>
</li><li>ethernet: Intel 82567LM Gigabit (10/100/1000), works<br>
</li><li>wifi: Intel WiFi Link 5100 AGN Mini-PCI Express, works<br>
</li><li>disk controller: 82801IBM/IEM (ICH9M/ICH9M-E) 4 port SATA Controller AHCI mode, works<br>
</li><li>audio: Intel HD 82801I (ICH9 Family), works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet works with <code>*acpi=1</code>
</li><li><a href='http://plan9.stanleylieber.com/hardware/thinkpad/x301/2776-p6u/sysinfo'>sysinfo</a>, <a href='http://plan9.stanleylieber.com/hardware/thinkpad/x301/2776-p6u/plan9.ini'>plan9.ini</a>
<img src='https://c2.staticflickr.com/8/7517/16289778845_1ce6afcd11_z.jpg'></li></ul></li></ul>

<h1>Desktops</h1>
<img src='http://farm7.static.flickr.com/6220/6291015730_178c57255b_o.png'>
<h2>eMachines</h2>
<h3>T3302</h3>
<ul><li>cpu: AMD Sempron 3300+ 2GHz<br>
</li><li>chipset: VIA K8M800<br>
</li><li>graphics: VIA S3 UniChrome, replaced with NVidia GeoForce FX 5700 128MB DVI output, 1920x1080x32<br>
</li><li>ethernet: 3Com 3C905-TX Fast Etherlink 10/100 PCI TX<br>
</li><li>audio:<br>
</li><li>usb: works<br>
</li><li><a href='http://plan9.stanleylieber.com/hardware/emachines/t3302/plan9.ini'>plan9.ini</a>, <a href='http://plan9.stanleylieber.com/hardware/emachines/t3302/sysinfo'>sysinfo</a></li></ul>

<h2>Igel</h2>
<h3>4210 LX Winestra</h3>
<ul><li><a href='http://plan9.stanleylieber.com/hardware/igel/4210lxwinestra/sysinfo'>sysinfo</a></li></ul>

<h2>Soekris</h2>
<h3>net6501-70</h3>
<ul><li>cpu: Intel Atom E680 1.6Ghz, both pc and pc64 work<br>
</li><li>ethernet: 4x Intel 82574L Gigabit Ethernet, works<br>
</li><li>usb: works<br>
</li><li>serial console: works, use <code>console=0 b19200</code> in plan9.ini. 9boot hangs without a serial cable attached; disable uartputc as a workaround<br>
</li><li>this machine does not have ACPI<br>
</li><li><a href='http://okturing.com/src/2265/body'>plan9.ini</a>, <a href='http://sysinfo.9front.org/src/69/body'>sysinfo</a></li></ul>

<h2>ThinkCentre</h2>
<h3>M55</h3>
<h4>8810-D3U</h4>
<ul><li>cpu: Intel Core 2 Duo<br>
</li><li>graphics: Intel GMA 3000 internal (untested), replaced with NVidia GeForce 8400GS DVI output, <a href='http://man.aiju.de/8/realemu'>realemu(8)</a> VESA 1680x1050x32<br>
</li><li>ethernet: Broadcom BCM5755 (10/100/1000), works<br>
</li><li>audio: Intel HDA, works<br>
</li><li>usb: works<br>
</li><li>mp: mp + sata, ethernet, usb works with <code>*acpi=</code></li></ul>

<h2>3.3 - Virtual Machines</h2>
9front has been tested on several virtual machines. Details below.<br>
<br>
<b>Note:</b> As a general rule it is a good idea to manually specify a unique MAC address for each virtual machine instance running on the network, to avoid collisions.<br>
<br>
<h3>3.3.1 - Qemu</h3>
The following is tested with qemu 1.5.0 and 2.0.50 running on Linux, using <a href='fqa4#3.3.3_-_Virtio.md'>virtio</a> for disk and network.<br>
<br>
<h4>3.3.1.1 - Installation</h4>
Create a sparse disk image:<br>
<pre><code>qemu-img create -f qcow2 9front.qcow2.img 30G<br>
</code></pre>

Boot the <a href='mirrors.md'>9front.iso</a>:<br>
<pre><code>qemu-system-x86_64 -cpu host -enable-kvm -m 1024 \<br>
-net nic,model=virtio,macaddr=52:54:00:00:EE:03 -net user \<br>
-device virtio-scsi-pci,id=scsi \<br>
-drive if=none,id=vd0,file=9front.qcow2.img -device scsi-hd,drive=vd0 \<br>
-drive if=none,id=vd1,file=9front.iso -device scsi-cd,drive=vd1,bootindex=0<br>
</code></pre>

Finally, see: <a href='fqa4#4.3_-_Performing_a_simple_install.md'>4.3 - Performing a simple install</a>.<br>
<br>
<h4>3.3.1.2 - Post-Installation Booting</h4>
<pre><code>qemu-system-x86_64 -cpu host -enable-kvm -m 1024 \<br>
-net nic,model=virtio,macaddr=52:54:00:00:EE:03 -net user \<br>
-device virtio-scsi-pci,id=scsi \<br>
-drive if=none,id=vd0,file=9front.qcow2.img -device scsi-hd,drive=vd0<br>
</code></pre>

<h5>3.3.1.2.1 - Multiboot</h5>
Multiboot can be used to start the 9front kernel directly, skipping the bootloader step:<br>
<pre><code>-qemu -kernel 9pcf -initrd plan9.ini<br>
</code></pre>

<h4>3.3.1.4 - Networking</h4>
User networking is the default and works the same on every platform. More advanced options are particular to specific host operating systems; several are described below.<br>
<br>
<b>Note:</b> On many operating systems ICMP is limited to the superuser. One consequence is that a VM running with guest networking cannot ping remote hosts.<br>
<br>
<h5>3.3.1.4.1 - Linux VDE</h5>
Install <a href='http://vde.sourceforge.net'>vde2</a>.<br>
<br>
Setup a tap interface:<br>
<pre><code>sudo tunctl -u $USER -t tap0<br>
</code></pre>

Start a virtual switch connected to the tap interface:<br>
<pre><code>vde_switch --tap tap0 -daemon<br>
</code></pre>

Connect the switch to the network of the host. Use DHCP:<br>
<pre><code>slirpvde --dhcp --daemon<br>
</code></pre>

When booting 9front, add the following to the <code>qemu</code> command line arguments:<br>
<pre><code>-net vde<br>
</code></pre>

<h5>3.3.1.4.2 - OpenBSD tun(4)</h5>
Tested: OpenBSD/amd64 4.9-CURRENT, qemu-0.9.1p18, kqemu-1.3.0pre11p3<br>
<br>
Configure a <a href='http://www.openbsd.org/cgi-bin/man.cgi?query=tun&apropos=0&sektion=0&manpath=OpenBSD+Current&arch=i386&format=html'>tun(4)</a> interface with an IP address selected for your <code>qemu</code> network. Configure bridging between the tun(4) interface and your machine's external interface. Finally, configure NAT  or rules to pass traffic for the <code>qemu</code> network in <a href='http://www.openbsd.org/cgi-bin/man.cgi?query=pf.conf&apropos=0&sektion=5&manpath=OpenBSD+Current&arch=i386&format=html'>pf.conf</a>. Reboot.<br>
<br>
To launch <code>qemu</code> as a regular user:<br>
<pre><code>sudo sh -c "sudo -C 4 -u $USER qemu -m 768 \<br>
-net nic,vlan=0,model=rtl8139,macaddr=52:54:00:12:33.36 \<br>
-net tap,vlan=0,fd=3,script=no -no-fd-bootchk \<br>
-hda 9front.qcow2.img 3&lt;&gt;/dev/tun0"<br>
</code></pre>

See also: <a href='http://www.openbsd.org/cgi-bin/man.cgi?query=hostname.if&sektion=5&arch=i386&apropos=0&manpath=OpenBSD+Current'>hostname.if(5)</a>, <a href='http://www.openbsd.org/cgi-bin/man.cgi?query=pf.conf&apropos=0&sektion=5&manpath=OpenBSD+Current&arch=i386&format=html'>pf.conf(5)</a> and <a href='http://www.openbsd.org/cgi-bin/man.cgi?query=tun&apropos=0&sektion=0&manpath=OpenBSD+Current&arch=i386&format=html'>tun(4)</a>

<h5>3.3.1.4.3 - Windows TAP</h5>
This is tested with this <a href='http://www.h7.dion.ne.jp/~qemu-win/'>qemu for window</a> distribution. Download and run the installer from <a href='http://openvpn.net/index.php/open-source/downloads.html'>openvpn</a> to install the windows TAP driver. Create a new TAP interface with the "Add a new TAP virtual ethernet adapter" from the openvpn start menu. Go to the network manager and rename that new TAP interface to something<br>
more sane like: "qemu-tap". Configure ip addresses or bridge that interface with the network manager.<br>
<br>
Now you should be able to run qemu on that interface:<br>
<pre><code>qemu.exe -net nic -net tap,ifname="tap-qemu" ...<br>
</code></pre>

<h4>3.3.1.5 - Audio</h4>
Run qemu with the flag <code>-soundhw sb16</code> and put the following line in <code>plan9.ini</code>:<br>
<pre><code>audio0=type=sb16 port=0x220 irq=5 dma=5<br>
</code></pre>

<b>Note:</b> irq and dma values may vary.<br>
<br>
<h4>3.3.1.6 - Graphics</h4>
Use <code>monitor=vesa</code>.<br>
<br>
<b>Note:</b> Some versions of QEMU running on OSX have exhibited graphical glitches when using a 16-bit color mode (for example: <code>1024x768x16</code>. Try a 32-bit mode instead (for example: <code>1024x768x32</code>).<br>
<br>
<h3>3.3.2 - Virtualbox</h3>
Don't use Virtualbox. It tends to break between versions.<br>
<br>
<img src='http://9front.org/img/virtualbox.jpg' width='500'>

<h4>3.3.2.1 - Ethernet</h4>
The emulated "Intel PRO/1000 MT Server" ethernet controller is known to work.<br>
<br>
<h4>3.3.2.2 - Audio</h4>
Put the following in <code>plan9.ini</code>:<br>
<pre><code>audio0=type=sb16<br>
</code></pre>

<h4>3.3.2.3 - Graphics</h4>
Use <code>monitor=vesa</code>.<br>
<br>
<h4>3.3.2.4 - Known Working Versions</h4>
4.3.14 <a href='https://code.google.com/p/plan9front/source/detail?r=95030'>r95030</a> on Windows 7<br>
<br>
4.3.16 on Mac OS X <a href='https://www.youtube.com/watch?v=n5XAhsHyqow'>youtube</a>

4.3.18 <a href='https://code.google.com/p/plan9front/source/detail?r=96516'>r96516</a> on Linux x86_64 kernel 3.14.22<br>
<br>
4.3.18 on Windows 7:<br>
<pre><code>just tried with vbox 4.3.18 on windows7.  9front boots fine in BIOS<br>
mode, but the PCnet nic dosnt work.  reason is that vbox pIIx pci irq<br>
routing is fucked so the ethernet doesnt get interrupts. if i boot<br>
with *nopcirouting=1, it works fine. theres a option to select the<br>
chipset so i tried ICH9 with IO-APIC enabled.  normal mp mode fails<br>
because of broken mp tables, but works with *acpi=.  also, it works<br>
with UEFI mode (which always uses ACPI).  the usual intel mt server<br>
nic also works (thats what is usually recommended for working arround<br>
the broken ethernet).<br>
<br>
pci routing issue has been fixed in latest kernel, should be<br>
available in iso release after 3960.<br>
</code></pre>

4.3.20 <a href='https://code.google.com/p/plan9front/source/detail?r=96996'>r96996</a> on Mac OS X 10.6.8/10.9 and Ubuntu 14.04/14.10:<br>
<pre><code>General -&gt; Basic<br>
Type: Other<br>
Version: Other/Uknown<br>
<br>
System -&gt; Motherboard<br>
Chipset: PIIX3<br>
Pointing Device: PS/2 Mouse<br>
Extended Features: [x] Enable I/O APIC<br>
<br>
System -&gt; Processor<br>
Extended Features: [x] PAE/NX (not sure this matters)<br>
<br>
System -&gt; Acceleration<br>
[x] Enable VT-x/AMD-V<br>
[x] Enable Nested Paging<br>
<br>
Display -&gt; Video<br>
Extended Features: [x] Enable 3D Acceleration (not sure this matters)<br>
<br>
Storage -&gt; Attributes<br>
Name: IDE<br>
Type: PIIX4<br>
[x] Use Host I/O Cache<br>
<br>
Audio -&gt;<br>
[x] Enable Audio<br>
Host Audio Driver: CoreAudio (Can be PulseAudio or otherwise for Linux, <br>
etc. Shouldn't be hard to set this)<br>
Audio Controller: Soundblaster 16<br>
<br>
Network -&gt; Adapter 1<br>
Attached to: NAT<br>
-&gt; Advanced<br>
Adapter Type: Intel PRO/1000 MT Server<br>
Promiscuous Mode: Deny (Not sure this matters)<br>
<br>
Note: Enabling USB 2.0 Controll in 'Ports -&gt; USB' works just fine in <br>
9front, mounting under /shr flawlessly as long as the host has the <br>
Virtualbox Extension Pack running.<br>
</code></pre>

<img src='http://www.felloff.net/usr/cinap_lenrek/vbox.4.2.6.png' width='600'>

<h4>3.3.3 - Virtio</h4>
Current versions of qemu/kvm and virtualbox as of 3.1 support faster paravirtualized devices. Presently, 9front provides drivers for virtio hard disk and network.<br>
<br>
The virtio-blk disk device should show up as:<br>
<pre><code>/dev/sdF0<br>
</code></pre>

The virtio-scsi disk device should show up as:<br>
<pre><code>/dev/sd00<br>
</code></pre>

<b>Note:</b>
The <code>virtio-net</code> driver was added in <code>9front-4045.40f67c7db147.iso</code>.<br>
<br>
<br>
<a href='fqa.md'>Index</a> <a href='fqa2.md'>To Section 2 - Getting to know 9front</a> <a href='fqa4.md'>To Section 4 - 9front Installation Guide</a>