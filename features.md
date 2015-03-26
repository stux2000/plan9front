# New Features #
  * /shr: global mountpoint device [shr(3)](http://man.aiju.de/3/shr)
  * /mnt: is provided by [mntgen(4)](http://man.aiju.de/4/mntgen)
  * #A, audio drivers for sb16, intel hd audio and ac97 (both playback and recording supported!) [audio(3)](http://man.aiju.de/3/audio)
  * New BIOS based boot loader [9boot(8)](http://man.aiju.de/8/9boot) featuring a console and support for FAT/ISO/PXE and being small (<8K)
  * New EFI based boot loader http://code.google.com/p/plan9front/source/browse/sys/src/boot/efi/
  * Made kernel compliant to multiboot specification so it can be booted by qemu or grub directly.
  * Interruptable kernel qlocks (eqlock)
  * Defered clunks (closeproc) for cached mounts
  * New rc based [boot(8)](http://man.aiju.de/8/boot) allows breaking into a shell at any time
  * Default file system is an improved [cwfs(4)](http://man.aiju.de/4/cwfs) (cwfs64x)
  * Support for encrypted partitions [cryptsetup(8)](http://man.aiju.de/8/cryptsetup) (see [install](fqa4#4.4_-_Encrypted_Partitions.md) procedure)
  * New screen fonts: `dejavu`, `germgoth`, `vga`
  * No central replica; source updates are done with [hg(1)](http://man.aiju.de/1/hg) (Mercurial)
  * Keyboard events with /dev/kbd [kbdfs(8)](http://man.aiju.de/8/kbdfs)  and [rio(4)](http://man.aiju.de/4/rio)
  * [/lib/ken](http://code.google.com/p/plan9front/source/browse/lib/ken), [/lib/rob](http://code.google.com/p/plan9front/source/browse/lib/rob), [/lib/rsc](http://code.google.com/p/plan9front/source/browse/lib/rsc)
  * New [listen(8)](http://man.aiju.de/8/listen) `-p maxprocs` option
  * Always available network [aan(8)](http://man.aiju.de/8/aan) support in [cpu(1)](http://man.aiju.de/1/cpu)
  * MSI (message signalled interrupts), avoids problems with broken MP tables, see [icanhasmsi(8)](http://man.aiju.de/8/icanhasmsi) (dump MSI info)
  * legacy free ACPI support (aml interpreter libaml, mp interrupt routing, scram)
  * New [rio(1)](http://man.aiju.de/1/rio) `-b` option (black window backgrounds)
  * USB CD-ROM boot/install
  * USB [stick/hard drive boot](fqa4#4.2.2_-_USB_drive.md)
  * improved USB mouse support
  * Support for USB ptp cameras
  * Stable across machines USB device names
  * VGA initialization done by interpreting the VESA BIOS with [realemu(8)](http://man.aiju.de/8/realemu), working VESA screen blanking.
  * `/dev/kbd` and clipboard charset support for [vnc(1)](http://man.aiju.de/1/vnc)
  * New [webfs(4)](http://man.aiju.de/4/webfs) with HTTP1.1 and Keep-Alive support.
  * Qemu/KVM virtio block device and ethernet drivers (see [wiki](fqa4#4.5.1.3_-_Virtio.md) and [/sys/src/9/pc/sdvirtio.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/sdvirtio.c), [/sys/src/9/pc/ethervirtio.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/ethervirtio.c))
  * mouse wheel and chording support in [sam(1)](http://man.aiju.de/1/sam)
  * elliptic curve cryptography [ec(2)](http://man.aiju.de/2/ec)
  * working interrupt key (Del) in console
  * wifi support with wpa/wpa2
  * SSE support
  * System-wide support for internationalized domain names
  * unicode support in [vt(1)](http://man.aiju.de/1/vt)
  * [pc64](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc64/): kernel for amd64

### New Programs ###
  * " and "" (print, repeat previous command)
  * [alarm(1)](http://man.aiju.de/1/alarm) (timeouts in rc scripts)
  * [audio(1)](http://man.aiju.de/1/audio) (mp3, ogg, flac, µlaw, wav)
  * [bullshit(1)](http://man.aiju.de/1/bullshit) (print out a stream of bullshit)
  * [cifsd(8)](http://man.aiju.de/8/cifsd) (CIFS/SMB server)
  * [derp(1)](http://man.aiju.de/1/derp) (find changes between directories)
  * [feminize(1)](http://code.google.com/p/plan9front/source/browse/rc/bin/feminize) (replace sexist remarks)
  * [fplot(1)](http://man.aiju.de/1/fplot)
  * new games: [doom](http://code.google.com/p/plan9front/source/browse/sys/src/games/doom), [glendy](http://code.google.com/p/plan9front/source/browse/sys/src/games/glendy.c), [mandel](http://code.google.com/p/plan9front/source/browse/sys/src/games/mandel.c), [mines](http://code.google.com/p/plan9front/source/browse/sys/src/games/mines), [mole](http://code.google.com/p/plan9front/source/browse/sys/src/games/mole.c), [packet](http://code.google.com/p/plan9front/source/browse/sys/src/games/packet.c)
  * [hg(1)](http://man.aiju.de/1/hg) and [hgfs(4)](http://man.aiju.de/4/hgfs) (Mercurial)
  * [hget(1)](http://man.aiju.de/1/hget) (rewritten in rc, now uses webfs)
  * [hpost(1)](http://man.aiju.de/1/hget) (extract and post html forms)
  * [hold(1)](http://man.aiju.de/1/hold) (simple text editor)
  * [ipserv(8)](http://man.aiju.de/8/ipserv) (proxy servers socksd and hproxy)
  * [memory(1)](http://man.aiju.de/1/memory) (check memory usage)
  * [mothra(1)](http://man.aiju.de/1/mothra) (Tom Duff's web browser, now uses webfs)
  * [netaudit(8)](http://man.aiju.de/8/netaudit) (network configuration checker)
  * [newt(1)](http://man.aiju.de/1/newt) Usenet client
  * [nietzsche(1)](http://man.aiju.de/1/nietzsche) (print out Nietzsche quote)
  * [nintendo(1)](http://man.aiju.de/1/nintendo) Nintendo emulators: gb, nes, snes
  * [page(1)](http://man.aiju.de/1/page) (zoom and enhance!)
  * [paint(1)](http://man.aiju.de/1/paint) (drawing program)
  * [pkg(1)](http://man.aiju.de/1/pkg) (install alien software)
  * [play(1)](http://man.aiju.de/1/play) (audio player)
  * [pstree(1)](http://man.aiju.de/1/ps) (print tree-like map of current processes and sub-processes)
  * [rotate(1)](http://man.aiju.de/1/rotate) (rotate or mirror a picture)
  * [resize(1)](http://man.aiju.de/1/resample) (fast but low quality image resampler)
  * [scram(8)](http://man.aiju.de/8/fshalt) (ACPI and APM shutdown)
  * [sega(1)](http://man.aiju.de/1/sega) Sega Megadrive/Genesis emulator: md
  * [ssam(1)](http://man.aiju.de/1/ssam) (stream interface to sam)
  * [sysinfo(1)](http://man.aiju.de/1/sysinfo) (print hardware report)
  * [sysupdate(1)](http://man.aiju.de/1/sysinfo) (update the local hg repository)
  * [theo(1)](http://man.aiju.de/1/fortune) (print out insults from Theo de Raadt)
  * [tput(1)](http://man.aiju.de/1/tput) (measure read throughput)
  * [troll(1)](http://man.aiju.de/1/fortune) (automated trolling)
  * [tap(1)](http://man.aiju.de/1/tap) (follow the pipes of a process)
  * [tif(1)](http://man.aiju.de/1/jpg) (tiff decoder)
  * [tojpg(1)](http://man.aiju.de/1/jpg) (jpeg encoder)
  * [totif(1)](http://man.aiju.de/1/jpg) (tiff encoder)
  * [torrent(1)](http://man.aiju.de/1/torrent) (bittorrent client)

# New Hardware Support #
### Audio ###
  * AC97 [/sys/src/9/pc/audioac97.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/audioac97.c)
  * HDA [/sys/src/9/pc/audiohda.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/audiohda.c)
  * SB 16/ESS [/sys/src/9/pc/audiosb16.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/audiosb16.c)

### Ethernet ###
  * Broadcom BCM57xx [/sys/src/9/pc/etherbcm.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/etherbcm.c)
  * ADMtek Pegasus [/sys/src/cmd/nusb/ether/aue.c](http://code.google.com/p/plan9front/source/browse/sys/src/cmd/nusb/ether/aue.c)
  * Realtek RTL8150 [/sys/src/cmd/nusb/ether/url.c](http://code.google.com/p/plan9front/source/browse/sys/src/cmd/nusb/ether/url.c)

### Wifi ###
  * Intel Centrino Advanced-N 6205 (iwl-6005)
  * Intel Centrino Ultimate-N (iwl-6000)
  * Intel Centrino Wireless-N 100
  * Intel WiFi Link 1000/4965/5100/5300 AGN
  * Ralink RT2860/RT3090

### IDE/PATA/SATA ###
  * ATI SB600 PATA
  * Intel 82371FB (PIIX)
  * Intel 82801FB (ICH6)
  * Intel 82801FBM SATA
  * Intel 82801HB/HR/HH/HO SATA IDE
  * Intel 82801HBM/HEM PATA
  * Intel 82801HBM SATA AHCI (ICH8-M)
  * Intel SCH (Poulsbo)
  * Marvell PATA
  * VIA PV530

### Tablets ###
  * Wacom WACF004, WACF008 [/sys/src/cmd/aux/wacom.c](http://code.google.com/p/plan9front/source/browse/sys/src/cmd/aux/wacom.c), [/sys/src/cmd/aux/tablet.c](http://code.google.com/p/plan9front/source/browse/sys/src/cmd/aux/tablet.c)

### Video ###
  * AMD Geode LX driver [/sys/src/cmd/aux/vga/geode.c](http://code.google.com/p/plan9front/source/browse/sys/src/cmd/aux/vga/geode.c) [/sys/src/9/pc/vgageode.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/vgageode.c)
  * nVidia GeForce FX 5200
  * nVidia GeForce FX 5700
  * nVidia GeForce 6200 LE
  * nVidia MCP55
  * Intel G45 and Ivy Bridge driver [/sys/src/cmd/aux/vga/igfx.c](http://code.google.com/p/plan9front/source/browse/sys/src/cmd/aux/vga/igfx.c)  [/sys/src/9/pc/vgaigfx.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/vgaigfx.c)

### SD Card ###
  * Ricoh [/sys/src/9/pc/pmmc.c](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/pmmc.c)

See KnownWorkingHardware for a list of complete machines known to work.

![http://aiju.de/up/ibmintel.png](http://aiju.de/up/ibmintel.png)