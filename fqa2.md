[Index](fqa.md) [To Section 1 - Introduction to 9front](fqa1.md) [To Section 3 - Hardware](fqa3.md)

# 2 - Getting to know 9front #

## Table of Contents ##
[2.1 - Web Pages](fqa2#2.1_-_Web_Pages.md)

[2.2 - Mailing Lists](fqa2#2.2_-_Mailing_Lists.md)

[2.2.1 - Mailing List Archives](fqa2#2.2.1_-_Mailing_List_Archives.md)

[2.2.2 - Other useful mailing lists](fqa2#2.2.2_-_Other_useful_mailing_lists.md)

[2.3 - Manual Pages](fqa2#2.3_-_Manual_Pages.md)

[2.3.1 - How do I display a man page source file?](fqa2#2.3.1_-_How_do_I_display_a_man_page_source_file?.md)

[2.3.2 - How do I write my own manual page?](fqa2#2.3.2_-_How_do_I_write_my_own_manual_page?.md)

[2.4 - Reporting Bugs](fqa2#2.4_-_Reporting_Bugs.md)

[2.4.1 - How do I get more useful info for developers?](fqa2#2.4.1_-_How_do_I_get_more_useful_info_for_developers?.md)

[2.4.1.1 - Take a photo of the panic screen](fqa2#2.4.1.1_-_Take_a_photo_of_the_panic_screen.md)

[2.4.1.2 - Make a stack trace of a crashed process](fqa2#2.4.1.2_-_Make_a_stack_trace_of_a_crashed_process.md)

## 2.1 - Web Pages ##
The official website for the 9front project is located at: [http://9front.org](http://9front.org).

Bell Labs Plan 9 wiki: [http://www.plan9.bell-labs.com/wiki/plan9/plan\_9\_wiki](http://www.plan9.bell-labs.com/wiki/plan9/plan_9_wiki).

Some users have set up sites and pages with 9front specific information. As with everything on the Internet, a good search engine is going to make your life easier, as will a healthy dose of skepticism. As always, do not blindly enter commands you do not understand into your computer.

A lot of valuable information can be found at [cat-v.org](http://cat-v.org) regarding aspects of UNIX, Plan 9 and software in general.  The cat-v IRC channel, #cat-v on freenode, is also the primary development chat mechanism.

## 2.2 - Mailing Lists ##
The 9front project maintains several mailing lists which users should subscribe to and follow. To subscribe to a mailing list, send an e-mail message to _list_-`owner@9front.org`, where _list_ is the name of the mailing list. That address is an automated subscription service. In the body of your message, on a single line, you should include the `subscribe` command. For example:

`subscribe`

After subscribing, list messages are received from and sent to _list_@9front.org, where _list_ is the name of the mailing list.

The _lists_ are as follows:

  * 9front (general discussion)

  * 9front-bugs (report bugs)

  * 9front-commits (read-only log of commits to the [Google Code mercurial repository](http://code.google.com/p/plan9front/source/list))

  * 9front-sysinfo (read-only log of [sysinfo](http://man.aiju.de/1/sysinfo) output from user systems)

To unsubscribe from a list, you will again send an e-mail message to _list_-`owner@9front.org`. It should look like this:

`unsubscribe`

Before posting a question on the `9front` mailing list, please check the rest of this FAQ. If asking a question possibly related to hardware, always include the output of [sysinfo(1)](http://man.aiju.de/1/sysinfo)!

### 2.2.1 - Mailing List Archives ###
Mailing list archives are available via 9p:
```
term% 9fs lists.9front.org
post...
term% ls /n/lists.9front.org
/n/lists.9front.org/9front
/n/lists.9front.org/9front-bugs
/n/lists.9front.org/9front-commits
/n/lists.9front.org/9front-sysinfo
```
Each of these directories contains messages sent to the respective mailing list in [mdir](http://plan9.stanleylieber.com/_books/nupas.pdf) format, one message per file. Erik Quanstrom's [nupas](http://plan9.stanleylieber.com/src/nupas.tgz) `upas/fs` can mount these directories as mailboxes, for reading directly with a mail client.

### 2.2.2 - Other useful mailing lists ###
<img src='http://9front.org/img/9fans.jpg'>

<ul><li><a href='http://9fans.net/archive'>9fans</a> - Official mailing list of Plan 9 from Bell Labs.</li></ul>

<ul><li><a href='https://groups.google.com/forum/#!forum/9changes'>9changes</a> - Notifications of changes to Plan 9 from Bell Labs (unofficial).</li></ul>

<ul><li><a href='https://groups.google.com/forum/#!forum/9nag'>9nag</a> - Ping alerts for plan9.bell-labs.com (unofficial).</li></ul>

<h2>2.3 - Manual Pages</h2>
9front comes with extensive documentation in the form of manual pages. Considerable effort is made to make sure the man pages are up-to-date and accurate. In all cases, the man pages are considered the authoritative source of information for 9front.<br>
<br>
You can find all the 9front man pages on the web at the following sites:<br>
<br>
<ul><li><a href='http://9hal.ath.cx/sys/man'>http://9hal.ath.cx/sys/man</a></li></ul>

<ul><li><a href='http://man.aiju.de'>http://man.aiju.de</a></li></ul>

<ul><li><a href='http://man.cat-v.org/9front'>http://man.cat-v.org/9front</a></li></ul>

<ul><li><a href='http://plan9.stanleylieber.com/man'>http://plan9.stanleylieber.com/man</a></li></ul>

as well as on your 9front computer.<br>
<br>
In general, if you know the name of a command or a manual page, you can read it by executing <code>man command</code>. For example: <code>man vi</code> to read about the <a href='http://man.aiju.de/1/vi'>MIPS binary emulator</a>. If you don't know the name of the command, or if <code>man command</code> doesn't find the manual page, you can search the manual page database by executing <code>lookman something</code>, where <code>something</code> is a likely word that might appear in the title of the manual page you're looking for. For example:<br>
<br>
<pre><code>term% lookman vesa<br>
man 3 vga # vga(3)<br>
man 8 realemu # realemu(8)<br>
man 8 vga # vga(8)<br>
</code></pre>

The resulting list is presented in the form of commands that can be highlighted and sent using rio's mouse button 2 menu.<br>
<br>
For many, having a hardcopy of the man page can be useful. To make a printable copy of a man page:<br>
<br>
<pre><code>man -t vga realemu | lp -dstdout &gt;vga.ps<br>
</code></pre>

or:<br>
<br>
<pre><code>man -t vga realemu | lp -dstdout | ps2pdf &gt;vga.pdf<br>
</code></pre>

<h3>2.3.1 - How do I display a man page source file?</h3>
The command <code>man -w</code> prints the location of the man page's source file:<br>
<br>
<pre><code>term% man -w vga realemu<br>
/sys/man/3/vga<br>
/sys/man/8/realemu<br>
/sys/man/8/vga<br>
</code></pre>

<h3>2.3.2 - How do I write my own manual page?</h3>
If you wish to write your own man page for an application you have written, there is a handy reference guide provided in <a href='http://man.aiju.de/6/man'>man(6)</a>.<br>
<br>
<h2>2.4 - Reporting Bugs</h2>
Before crying "Bug!", please make sure that is really what you are dealing with. If instead, you are not understanding how something is done in 9front or how it works, and can't find out how to resolve the problem using the <a href='fqa2#2.3_-_Manual_Pages.md'>manual pages</a> or <a href='fqa9.md'>FQA section 9 - Troubleshooting</a>, join <code>#cat-v</code> on <code>irc.freenode.net</code> or use the <a href='fqa2#2.2_-_Mailing_Lists.md'>mailing list (9front@9front.org)</a> to request help. If this is your first 9front experience, be realistic: you probably don't know what you're looking at and it is likely you did not discover an unknown bug. Also note that faulty hardware can mimic a software bug, please verify the current condition of your hardware before deciding you have found a "bug."<br>
<br>
Remember, before submitting any bug report, please read <a href='fqa8.md'>FQA section 8 - Using 9front</a> and <a href='fqa9.md'>FQA section 9 - Troubleshooting</a>.<br>
<br>
<img src='http://img.stanleylieber.com/src/16451/img/small.1391818758.png' />

<font size='1'><i>"I have with Plan 9 Is there a way to"</i></font>

Proper bug reporting is one of the most important responsibilities of end users. Very detailed information is required to diagnose most serious bugs. Developers frequently get bugs reports via e-mail such as this:<br>
<br>
<pre><code>From: joeuser@example.com<br>
To: 9front@9front.org<br>
Subject: HELP!!!<br>
<br>
I have a PC and it won't boot!!!!! It's a 486!!!!!<br>
</code></pre>

Hopefully most people understand why such reports get summarily deleted. All bug reports should contain detailed information. If Joe User had really expected someone to help find this bug, he or she would have supplied more information... something like this:<br>
<br>
<pre><code>From: smartuser@example.com<br>
To: 9front@9front.org<br>
Subject:  Acme suicide: fault read.<br>
<br>
I snarfed some text from rc and when I clicked `paste' inside Acme, Acme crashed.<br>
See the attached file for the error message.<br>
<br>
This is the sysinfo output:<br>
<br>
% cd '#ec'; for(i in *){echo $i '=' `{cat $i}}<br>
*e820 = 1 0x0000000000000000 0x000000000008b000 2 0x000000000008b000<br>
0x00000000000a0000 2 0x00000000000d2000 0x00000000000d4000 2 0x00000000000dc000<br>
0x0000000000100000 1 0x0000000000100000 0x000000007fee0000 3 0x000000007fee0000<br>
0x000000007fef5000 4 0x000000007fef5000 0x000000007ff00000 2 0x000000007ff00000<br>
0x0000000080000000 2 0x00000000e0000000 0x00000000f0000000 2 0x00000000f0008000<br>
0x00000000f000c000 2 0x00000000fec00000 0x00000000fec10000 2 0x00000000fed14000<br>
0x00000000fed18000 2 0x00000000fed18000 0x00000000fed19000 2 0x00000000fed19000<br>
0x00000000fed1a000 2 0x00000000fed20000 0x00000000fed90000 2 0x00000000fee00000<br>
0x00000000fee01000 2 0x00000000ff000000 0x0000000100000000<br>
apm0 = ax=f000<br>
auth = 192.168.4.23<br>
bootargs = tcp<br>
bootfile = /386/9pcf<br>
monitor = vesa<br>
mouseport = ps2intellimouse<br>
nobootprompt = tcp<br>
user = sl<br>
vgasize = 1600x1200x32<br>
<br>
% cat '#'P/archctl<br>
cpu P6 1996 pge<br>
pge on<br>
coherence mfence<br>
cmpswap cmpswap486<br>
i8253set on<br>
cache default uc<br>
cache 0x0 66571993088 wb<br>
cache 0x7ff00000 64425558016 uc<br>
cache 0xc0000000 64491618304 wc<br>
</code></pre>

--- snip ---<br>
<br>
<b>Note:</b> Detailed information about your hardware is necessary if you think the bug <i>could be in any way</i> related to your hardware or hardware configuration.<br>
<br>
See also: <a href='http://code.google.com/p/plan9front/issues/detail?id=207'>Issue 207: Your bug report SUCKS</a>

<h3>2.4.1 - How do I get more useful info for developers?</h3>
Here are a few additional tips:<br>
<br>
<h4>2.4.1.1 - Take a photo of the panic screen</h4>
Under some circumstances, you may not be able to recover text directly from a crashed system. In this situation, snap a photo of the screen, including as much of the screen in good focus as possible, and upload the image somewhere where it can be retrieved by developers.<br>
<br>
<img src='http://farm4.staticflickr.com/3805/12258133236_3fff1e273d_z.jpg' />

<h4>2.4.1.2 - Make a stack trace of a crashed process</h4>
<pre><code>term% hget http://www.jwz.org/blog/feed | rssread<br>
panic: D2B called on non-block c580 (double-free?)<br>
rssread 882285: suicide: sys: trap: fault read addr=0x0 pc=0x000038ef<br>
term% acid 882285<br>
/proc/882285/text:386 plan 9 executable<br>
/sys/lib/acid/port<br>
/sys/lib/acid/386<br>
acid: lstk()<br>
abort()+0x0 /sys/src/libc/9sys/abort.c:6<br>
ppanic(p=0xb5a0,fmt=0xbf72)+0x146 /sys/src/libc/port/malloc.c:166<br>
	pv=0xc100<br>
	msg=0xc310<br>
	v=0xdfffee90<br>
	n=0x2b<br>
D2B(p=0xb5a0,v=0xc580)+0x5a /sys/src/libc/port/pool.c:966<br>
	a=0xc578<br>
poolfreel(v=0xc580,p=0xb5a0)+0x20 /sys/src/libc/port/pool.c:1190<br>
	ab=0xc100<br>
poolfree(p=0xb5a0,v=0xc580)+0x41 /sys/src/libc/port/pool.c:1325<br>
free(v=0xc588)+0x23 /sys/src/libc/port/malloc.c:250<br>
nextxmlpull(x=0xc548)+0x334 /usr/sl/src/xmlpull/xmlpull.c:221<br>
nextxmlpull(x=0xc548)+0x2cb /usr/sl/src/xmlpull/xmlpull.c:316<br>
main()+0x34 /usr/sl/src/rssread/rssread.c:159<br>
	st=0x1<br>
	f=0xc5a8<br>
	r=0x0<br>
	x=0xc548<br>
_main+0x31 /sys/src/libc/386/main9.s:16<br>
acid: <br>
</code></pre>

<a href='fqa.md'>FAQ Index</a> <a href='fqa1.md'>To Section 1 - Introduction to 9front</a> <a href='fqa3.md'>To Section 3 - Hardware</a>