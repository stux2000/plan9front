# Introduction #

![http://www.chiffandfipple.com/startrek/picard2.jpg](http://www.chiffandfipple.com/startrek/picard2.jpg)

This is a list of possible things to add, remove, change in 9front.
After there's been some consensus that something here is going to be implemented, an issue may be created.

## Crazy Ideas ##
  * make a TODO list which isn't full of bullshit and random suggestions
  * women

## Basically Sound ##

  * dan cross' walk and sor
  * newuser script (is this really needed?)
  * pegasus
    * <strike>a package?</strike> NO
  * video decoder/player (ffmpeg port?)
  * graphviz
    * <strike>a package?</strike> NO
  * equis
    * use /dev/kbd (for video game emulators, amongst other things)
    * snarf/paste support (might be good as client program -- how would this work?)
  * openvpn
  * unrar 3
  * un7zip
  * tarfs (eekee?)
  * VacFS
    * client auth
    * groups (?)
    * write access
  * SMS, <strike>GENESIS, DONE</strike> TG-16, GBA emulators
  * music tracker program (sequencer)
  * pico(1) (the plan 9 image manipulation language)
  * OPUS audio support http://tools.ietf.org/html/rfc6716
  * djvu support
  * chm support http://www.nongnu.org/chmspec/latest/index.html
  * port awk from ape to native plan9 (switch system() from sh to rc; fix utf() and utf-8)
  * GUI programs (<strike>rio</strike> DONE, <strike>mothra</strike> DONE, abaco, etc.) mouse scrollwheel should work the same as in sam
  * GUI programs (mothra, abaco, sam, etc.) should have shift+up/down arrow behavior like rio
  * ape <strike>ipv6</strike> and /net.alt support
  * add magnet/dht and peer discovery support to ip/torrent
  * nupas - CAREFULLY compare with our existing upas, <strike>work on upas/fs so it can handle BOTH mbox and mdir</strike> (mbox support was apparently left in, upas/fs can still read mbox)


## Done or Dusted ##

![http://37.media.tumblr.com/be2807776a8e15c0eed66f7e33cb1ac8/tumblr_mlrpusN1vx1qzf22po1_500.jpg](http://37.media.tumblr.com/be2807776a8e15c0eed66f7e33cb1ac8/tumblr_mlrpusN1vx1qzf22po1_500.jpg)

  * <strike>freetype: <a href='http://mirtchovski.com/p9/freetype/'>http://mirtchovski.com/p9/freetype/</a></strike> NOTWANT: a working font converter is floating arround with a recent freetype port included. ask sl.  bdf2subf and ttf2subf now available in [src](http://plan9.stanleylieber.com/src) 
  * <strike><a href='http://ninetimes.cat-v.org/news/2008-11-20-1_Cpu_temperature_info'>http://ninetimes.cat-v.org/news/2008-11-20-1_Cpu_temperature_info</a></strike> DONE
  * <strike>vncv to use /dev/kbd</strike> DONE
  * <strike>sftpfs</strike> DONE, found in /n/sources/contrib/fhs
  * <strike>ports to other architectures</strike> like itanium?
  * <strike>Merge useful bits from 9atom</strike> too unspecific
  * <strike>unrar 2, xz</strike> DONE, ported by Jens Staal
  * <strike>webfs: connection keep alive, webdav, caching</strike> DONE
  * <strike>SSE support</strike> DONE
  * <strike>audio recording</strike> DONE
  * <strike>paint(1) add color picker</strike> DONE
  * <strike>write jpeg encoder tojpg</strike> DONE
  * <strike>fix vt or write a terminal emulator that doesnt suck</strike> DONE
  * <strike>factor out $arch/devusb.c to port</strike> DONE
  * <strike>factor out $arch/devether.c to port</strike> not worth it
  * <strike>tiff image decoder</strike> DONE
  * <strike>hjfs: add listener capability to serve as fs for remote systems</strike> DONE
  * <strike>ACPI, lets DO IT!</strike> DONE
  * <strike>ntlmv2 support in factotum/authsrv/cifsd/cifs (right now, only done inside cifs)</strike> DONE
  * <strike>merge /dev/cputemp into pifront kernel. </strike> DONE
  * <strike>page(1) implement bookmarks, or at least the ability to open on an arbitrary page</strike> DONE
  * <strike>NES emulator</strike> DONE
  * <strike>SNES emulator</strike> DONE
  * <strike>AYIYA support <a href='http://unfix.org/~jeroen/archive/drafts/draft-massar-v6ops-ayiya-02.txt'>http://unfix.org/~jeroen/archive/drafts/draft-massar-v6ops-ayiya-02.txt</a></strike> DONE

## Somebody Else's Problem ##

  * inferno
    * make snarf work by default

## For the Masochists ##

  * more Wifi, WPA
    * <b>DONE: etheriwl</b>
    * <strike>implement WPA and WPA2</strike> DONE
    * 5ghz wifi device driver(s)
  * reimplement hg from scratch plan9 style (in <strike>Go</strike> C!)
  * write NTFS driver
  * exfat filesystem

## For the REAL Masochists ##

  * reimplement ssh2 from scratch plan9 style  <strike>(in Go)</strike> (not in fucking Go). Coraid did this (requires nfactotum), Geoff modified it (does not require nfactotum). Geoff's version is now available [src](http://plan9.stanleylieber.com/src). Mischief's update of taruti's golang ssh2 client is available from [bitbucket](http://bitbucket.org/mischief/scpu).
    * there is but one true implementation of SSL, and it is a bitch to build.

## For the Users ##

  * read wiki
  * learn c