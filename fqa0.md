[Index](fqa.md) [To Section 1 - Introduction to 9front](fqa1.md)

# 0 - Introduction to Plan 9 #

![http://plan9.bell-labs.com/plan9/img/screenshot-small.png](http://plan9.bell-labs.com/plan9/img/screenshot-small.png)

## Table of Contents ##
[0.1 - What is Plan 9?](fqa0#0.1_-_What_is_Plan_9?.md)

[0.1.1 - Plan 9 is not UNIX](fqa0#0.1.1_-_Plan_9_is_not_UNIX.md)

[0.1.1.1 - Plan 9 is not plan9port](fqa0#0.1.1.1_-_Plan_9_is_not_plan9port.md)

[0.1.1.2 - Plan 9 is not Inferno](fqa0#0.1.1.2_-_Plan_9_is_not_Inferno.md)

[0.1.2 - Plan 9 is not a product](fqa0#0.1.2_-_Plan_9_is_not_a_product.md)

[0.2 - Why Plan 9?](fqa0#0.2_-_Why_Plan_9?.md)

[0.2.1 - What do people like about Plan 9?](fqa0#0.2.1_-_What_do_people_like_about_Plan_9?.md)

[0.2.1.1 - What do you use Plan 9 for?](fqa0#0.2.1.1_-_What_do_you_use_Plan_9_for?.md)

[0.2.2 - What do people hate about Plan 9?](fqa0#0.2.2_-_What_do_people_hate_about_Plan_9?.md)

[0.2.2.1 - What is not in Plan 9](fqa0#0.2.2.1_-_What_is_not_in_Plan_9.md)

[0.2.3 - Why did Plan 9's creators give up on Plan 9?](fqa0#0.2.3_-_Why_did_Plan_9's_creators_give_up_on_Plan_9?.md)

[2.3.1 - How do I display a man page source file?](fqa2#2.3.1_-_How_do_I_display_a_man_page_source_file?.md)

[2.3.2 - How do I write my own manual page?](fqa2#2.3.2_-_How_do_I_write_my_own_manual_page?.md)

[0.2.4 - What is the deal with Plan 9's weird license?](fqa0#0.2.4_-_What_is_the_deal_with_Plan_9's_weird_license?.md)

[0.2.4.1 - Richard Stallman hates the Plan Nine license (circa 2000)](fqa0#0.2.4.1_-_Richard_Stallman_hates_the_Plan_Nine_license_(circa_2000).md)

[0.2.4.2 - Theo de Raadt hates the Plan 9 license (circa 2003)](fqa0#0.2.4.2_-_Theo_de_Raadt_hates_the_Plan_9_license_(circa_2003).md)

[0.2.4.3 - Everyone hates the Plan 9 license (circa 2014)](fqa0#0.2.4.3_-_Everyone_hates_the_Plan_9_license_(circa_2014).md)

[0.3 - Further Reading](fqa0#0.3_-_Further_Reading.md)

[0.3.1 - Plan 9 papers](fqa0#0.3.1_-_Plan_9_papers.md)

[0.3.2 - Man pages](fqa0#0.3.2_-_Man_pages.md)

[0.3.3 - Web pages](fqa0#0.3.3_-_Web_pages.md)

[0.3.4 - Books](fqa0#0.3.4_-_Books.md)

## 0.1 - What is Plan 9? ##
![http://img.stanleylieber.com/src/16450/img/1391740412.jpg](http://img.stanleylieber.com/src/16450/img/1391740412.jpg)

![http://9front.org/img/plan9team1995.jpg](http://9front.org/img/plan9team1995.jpg)

Plan 9 is a research operating system from the same group who created UNIX at [Bell Labs Computing Sciences Research Center](http://cm.bell-labs.com/cm/cs/alumni.html) (CSRC). It emerged in the late 1980s, and was an attempt to evolve some of the same ideas that informed UNIX into the era of networking and graphics. [Rob Pike](http://en.wikipedia.org/wiki/Rob_Pike) has described Plan 9 as "an argument," while others have described it as "UNIX, only moreso."

From [The Use of Name Spaces in Plan 9](http://doc.cat-v.org/plan_9/4th_edition/papers/names):
```
Plan 9 argues that given a few carefully implemented abstractions it
is possible to produce a small operating system that provides support
for the largest systems on a variety of architectures and networks.
```

From the [intro(1)](http://man.aiju.de/1/intro) man page:
```
Plan 9 is a distributed computing environment assembled from
separate machines acting as terminals, CPU servers, and file
servers.  A user works at a terminal, running a window
system on a raster display.  Some windows are connected to
CPU servers; the intent is that heavy computing should be
done in those windows but it is also possible to compute on
the terminal.  A separate file server provides file storage
for terminals and CPU servers alike.
```

See: [Designing Plan 9](http://doc.cat-v.org/plan_9/1st_edition/designing_plan_9), originally delivered at the [UKUUG Conference in London, July 1990](https://groups.google.com/forum/#!topic/uk.announce/wEUdLbrb_Uk), and [FQA 7 - System Management](fqa7.md) for a more detailed overview of Plan 9's design.

<img src='http://9front.org/img/fork.jpg' width='500'>

Today, Plan 9 continues in its original form, as well as in several derivatives and forks:<br>
<br>
<a href='http://en.wikipedia.org/wiki/Plan_9_from_Bell_Labs'>Plan 9 from Bell Labs</a> - The original Plan 9.  Effectively dead, all the developers have been run out of the Labs and/or are on display at Google.<br>
<br>
<a href='http://en.wikipedia.org/wiki/Plan_9_from_User_Space'>Plan 9 from User Space</a> - Plan 9 userspace ported/imitated for UNIX (specifically OS X)<br>
<br>
<a href='http://www.9legacy.org'>9legacy</a> - David du Colombier's cherry picked collection of patches from various people/forks to labs plan 9. (it is not a fork)<br>
<br>
<a href='http://www.9atom.org'>9atom</a> - Erik Quanstrom's fork of Plan 9, maintained to erik's needs and occasionally pilfered by 9front<br>
<br>
<a href='http://9front.org'>9front</a> - (that's us) (we rule (we're the tunnel snakes))<br>
<br>
<a href='http://lsub.org/ls/nix.html'>NIX</a> - High performance cloud computing is NIX -- imploded in a cloud of political acrimony and retarded bureaucratic infighting<br>
<br>
<a href='http://nxm.coreboot.org/NxM'>NxM</a> - A kernel for manycore systems -- never spotted in the wild<br>
<br>
<a href='http://lsub.org/ls/research.html'>Clive</a> - A new operating system from Francisco J. Ballesteros, designed to generate grantwriting practice material and research projects for otherwise indolent students<br>
<br>
<a href='http://akaros.cs.berkeley.edu/akaros-web/news.php'>Akaros</a> - Akaros is an open source, GPL-licensed operating system for manycore architectures.  Has no bearing on anything but has attracted grant money.<br>
<br>
<a href='http://www.vitanuova.com/inferno'>Inferno</a> - Inferno is a distributed operating system started at Bell Labs, but is now developed and maintained by <a href='http://www.vitanuova.com/'>Vita Nuova Holdings</a> as free software. Just kidding it is not developed or maintained.<br>
<br>
<h3>0.1.1 - Plan 9 is not UNIX</h3>
<img src='http://img.stanleylieber.com/src/13852/img/1334625198.png' width='500'>

In the words of the <a href='http://www.plan9.bell-labs.com/wiki/plan9/plan_9_wiki/index.html'>Bell Labs Plan 9 wiki</a>:<br>
<pre><code>Plan 9 is not Unix.  If you think of it as Unix, you may become<br>
frustrated when something doesn't exist or when it works differently<br>
than you expected.  If you think of it as Plan 9, however, you'll find<br>
that most of it works very smoothly, and that there are some truly<br>
neat ideas that make things much cleaner than you have seen before.<br>
</code></pre>

Confusion is compounded by the fact that many UNIX commands exist on Plan 9 and behave in similar ways. In fact, some of Plan 9's userland (such as the <a href='http://doc.cat-v.org/bell_labs/upas_mail_system'>upas</a> mail interface, the <a href='http://sam.cat-v.org'>sam</a> text editor, and the <a href='http://man.aiju.de/1/rc'>rc(1)</a> shell) are carried over directly from <a href='http://www.cs.bell-labs.com/10thEdMan'>Research UNIX 10th Edition</a>. Further investigation reveals that many ideas found in Plan 9 were explored in more primitive form in the later editions of <a href='http://en.wikipedia.org/wiki/Research_Unix'>Research UNIX</a>.<br>
<br>
See also: <a href='http://www.plan9.bell-labs.com/wiki/plan9/UNIX_to_Plan_9_command_translation/index.html'>UNIX to Plan 9 command translation</a>

<h4>0.1.1.1 - Plan 9 is not plan9port</h4>
<a href='http://swtch.com/plan9port'>Plan 9 from User Space</a> (also known as plan9port or p9p) is a port of many Plan 9 from Bell Labs libraries and applications to UNIX-like operating systems. Currently it has been tested on a variety of operating systems including: Linux, Mac OS X, FreeBSD, NetBSD, OpenBSD, Solaris and SunOS.<br>
<br>
<b>Note:</b> Plan9port consists of a combination of mostly unaltered Plan 9 userland utilities and various attempts to imitate Plan 9 intefaces using available UNIX programs and commands. Some are more successful than others.<br>
<br>
<h4>0.1.1.2 - Plan 9 is not Inferno</h4>
<a href='http://www.vitanuova.com/inferno'>Inferno</a> is a distributed operating system also started at Bell Labs, but is now developed and maintained by <a href='http://www.vitanuova.com/'>Vita Nuova Holdings</a> as free software. It employs many ideas from Plan 9 (and even shares some source code), but is a completely different OS.<br>
<br>
<b>Note:</b> Inferno shares some compatible interfaces with Plan 9, including the <a href='http://9p.cat-v.org'>9P/Styx</a> protocol.<br>
<br>
<h3>0.1.2 - Plan 9 is not a product</h3>
<pre><code>Path: utzoo!utgpu!water!watmath!clyde!bellcore!faline!thumper!ulysses!smb<br>
From: s...@ulysses.homer.nj.att.com (Steven Bellovin)<br>
Newsgroups: comp.unix.wizards<br>
Subject: Re: Plan 9? (+ others)<br>
Message-ID: &lt;10533@ulysses.homer.nj.att.com&gt;<br>
Date: 23 Aug 88 16:19:40 GMT<br>
References: &lt;846@yunexus.UUCP&gt; &lt;282@umbio.MIAMI.EDU&gt; &lt;848@yunexus.UUCP&gt;<br>
Organization: AT&amp;T Bell Laboratories, Murray Hill<br>
Lines: 33<br>
<br>
``Plan 9'' is not a product, and is not intended to be.  It is research --<br>
an experimental investigation into a different way of computing.  The<br>
developers started from several basic assumptions:  that CPUs are very<br>
cheap but that we don't really know how to combine them effectively; that<br>
*good* networking is very important; that an intelligent user interface<br>
(complete with dot-mapped display and mouse) is a Right Decision; that<br>
existing systems with networks, mice, etc., are not the correct way to<br>
do things, and in particular that today's workstations are not the way to<br>
go.  (No, I won't bother to explain all their reasoning; that's a long<br>
and separate article.)  Finally, the UNIX system per se is dead as a<br>
vehicle for serious research into operating system structure; it has grown<br>
too large, and is too constrained by 15+ years of history.<br>
<br>
Now -- given those assumptions, they decided to throw away what we have<br>
today and design a new system.  Compatibility isn't an issue -- they are<br>
not in the product-building business.  (Nor are they in the ``let's make<br>
another clever hack'' business.)  Of course aspects of Plan 9 resemble<br>
the UNIX system quite strongly -- is it any surprise that Pike, Thompson,<br>
et al., think that that's a decent model to follow?  But Plan 9 isn't,<br>
and is not meant to be, a re-implementation of the UNIX system.  If you<br>
want, call it a UNIX-like system.<br>
<br>
Will Plan 9 ever be released?  I have no idea.  Will it remain buried?<br>
I hope not.  Large companies do not sponsor large research organizations<br>
just for the prestige; they hope for an (eventual) concrete return in the<br>
form of concepts that can be made into (or incorporated into) products.<br>
<br>
<br>
			--Steve Bellovin<br>
<br>
Disclaimer:  this article is not, of course, an official statement from AT&amp;T.<br>
Nor is it an official statement of the reasoning behind Plan 9.  I do think<br>
it's accurate, though, and I'm sure I'll be told if I'm wrong...<br>
</code></pre>

<h2>0.2 - Why Plan 9?</h2>
You may ask yourself, well, how did I get here? In the words of Plan 9 contributor <a href='http://swtch.com'>Russ Cox</a>:<br>
<pre><code>Why Plan 9 indeed.  Isn't Plan 9 just another Unix clone?  Who cares?<br>
<br>
Plan 9 presents a consistent and easy to use interface.  Once you've<br>
settled in, there are very few surprises here.  After I switched to<br>
Linux from Windows 3.1, I noticed all manner of inconsistent behavior<br>
in Windows 3.1 that Linux did not have.  Switching to Plan 9 from<br>
Linux highlighted just as much in Linux.<br>
<br>
One reason Plan 9 can do this is that the Plan 9 group has had the<br>
luxury of having an entire system, so problems can be fixed and<br>
features added where they belong, rather than where they can be.  For<br>
example, there is no tty driver in the kernel.  The window system<br>
handles the nuances of terminal input.<br>
<br>
If Plan 9 was just a really clean Unix clone, it might be worth using,<br>
or it might not.  The neat things start happening with user-level file<br>
servers and per-process namespace.  In Unix, /dev/tty refers to the<br>
current window's output device, and means different things to<br>
different processes.  This is a special hack enabled by the kernel for<br>
a single file.  Plan 9 provides full-blown per-process namespaces.  In<br>
Plan 9 /dev/cons also refers to the current window's output device,<br>
and means different things to different processes, but the window<br>
system (or telnet daemon, or ssh daemon, or whatever) arranges this,<br>
and does the same for /dev/mouse, /dev/text (the contents of the<br>
current window), etc.<br>
<br>
Since pieces of file tree can be provided by user-level servers, the<br>
kernel need not know about things like DOS's FAT file system or<br>
GNU/Linux's EXT2 file system or NFS, etc.  Instead, user-level servers<br>
provide this functionality when desired.  In Plan 9, even FTP is<br>
provided as a file server: you run ftpfs and the files on the server<br>
appear in /n/ftp.<br>
<br>
We need not stop at physical file systems, though.  Other file servers<br>
synthesize files that represent other resources.  For example, upas/fs<br>
presents your mail box as a file tree at /mail/fs/mbox.  This models<br>
the recursive structure of MIME messages especially well.<br>
<br>
As another example, cdfs presents an audio or data CD as a file<br>
system, one file per track.  If it's a writable CD, copying new files<br>
into the /mnt/cd/wa or /mnt/cd/wd directories does create new audio or<br>
data tracks.  Want to fixate the CD as audio or data?  Remove one of<br>
the directories.<br>
<br>
Plan 9 fits well with a networked environment, files and directory<br>
trees can be imported from other machines, and all resources are files<br>
or directory trees, it's easy to share resources.  Want to use a<br>
different machine's sound card?  Import its /dev/audio.  Want to debug<br>
processes that run on another machine?  Import its /proc.  Want to use<br>
a network interface on another machine?  Import its /net.  And so on.<br>
<br>
Russ Cox<br>
</code></pre>

<h3>0.2.1 - What do people like about Plan 9?</h3>
<a href='http://www.plan9.bell-labs.com/wiki/plan9/what_do_people_like_about_plan_9/index.html'>Descriptive testmony</a> by long time Plan 9 users Charles Forstyh, Anthony Sorace and Geoff Collyer.<br>
<br>
<h4>0.2.1.1 - What do you use Plan 9 for?</h4>
if you dont know what this is usefull<br>
<br>
then its not for you<br>
<br>
<h3>0.2.2 - What do people hate about Plan 9?</h3>
<a href='http://jfloren.net'>John floren</a> provides a humorous(?) overview of <a href='http://jfloren.net/b/2012/4/27/0'>a typical new user's reactions to Plan 9</a>:<br>
<pre><code>Hi! I’m new to Plan 9. I’m really excited to work with this<br>
new Linux system.<br>
<br>
I hit some questions.<br>
1  How do I run X11?<br>
2  Where is Emacs?<br>
3  The code is weird. It doesn’t look like GNU C at all.<br>
Did the people who wrote Plan 9 know about C?<br>
4  I tried to run mozilla but it did not work. How come?<br>
</code></pre>

Don't feel bad, we've all been there.<br>
<br>
<h4>0.2.2.1 - What is not in Plan 9</h4>
A summary of common features you may have been expecting that are missing from Plan 9: <a href='http://c2.com/cgi/wiki?WhatIsNotInPlanNine'>WhatIsNotInPlanNine</a>

<h3>0.2.3 - Why did Plan 9's creators give up on Plan 9?</h3>
<img src='http://9front.org/img/belllabs.jpg'>

Most of the people who worked on Plan 9 have moved on from Bell Labs and/or<br>
no longer work on Plan 9 (notable exception: Jim McKie).<br>
Various reasons have been articulated by various people.<br>
<br>
<a href='http://russ.cox.usethis.com'>Russ Cox</a>:<br>
<pre><code>I ran Plan 9 from Bell Labs as my day to day work environment until<br>
around 2002.  By then two facts were painfully clear.  First, the<br>
Internet was here to stay; and second, Plan 9 had no hope of keeping<br>
up with web browsers.  Porting Mozilla to Plan 9 was far too much<br>
work, so instead I ported almost all the Plan 9 user level software to<br>
FreeBSD, Linux, and OS X.<br>
</code></pre>

Russ Cox (<a href='http://9fans.net/archive/2010/02/341'>again</a>):<br>
<pre><code>The standard set up for a Plan 9 aficionado here seems to<br>
be a Mac or Linux machine running Plan 9 from User Space<br>
to get at sam, acme, and the other tools.  Rob, Ken, Dave, and I<br>
use Macs as our desktop machines, but we're a bit of an exception.<br>
Most Google engineers use Linux machines, and I know of<br>
quite a few ex-Bell Labs people who are happy to be using<br>
sam or acme on those machines.  My own setup is two<br>
screens.  The first is a standard Mac desktop with non-Plan 9<br>
apps and a handful of 9terms, and the second is a full-screen<br>
acme for getting work done.  On Linux I do the same but the<br>
first screen is a Linux desktop running rio (formerly dhog's 8½).<br>
<br>
More broadly, every few months I tend to get an email from<br>
someone who is happy to have just discovered that sam is still<br>
maintained and available for modern systems.  A lot of the time<br>
these are people who only used sam on Unix, never on Plan 9.<br>
The plan9port.tgz file was downloaded from 2,522 unique<br>
IP addresses in 2009, which I suspect is many more than<br>
Plan 9 itself.  In that sense, it's really nice to see the tools<br>
getting a much wider exposure than they used to.<br>
<br>
I haven't logged into a real Plan 9 system in many years,<br>
but I use 9vx occasionally when I want to remind myself how<br>
a real Plan 9 tool worked.  It's always nice to be back,<br>
however briefly.<br>
<br>
Russ<br>
</code></pre>

Russ Cox <a href='http://9fans.net/archive/2010/02/344'>continues</a>:<br>
<pre><code>&gt; Can you briefly tell us why you (Russ, Rob, Ken and Dave)<br>
&gt; no longer use Plan9 ?<br>
&gt; Because of missing apps or because of missing driver for your hardware ?<br>
&gt; And do you still use venti ?<br>
<br>
Operating systems and programming languages have<br>
strong network effects: it helps to use the same system<br>
that everyone around you is using.  In my group at MIT,<br>
that meant FreeBSD and C++.  I ran Plan 9 for the first<br>
few years I was at MIT but gave up, because the lack of<br>
a shared system made it too hard to collaborate.<br>
When I switched to FreeBSD, I ported all the Plan 9 libraries<br>
and tools so I could keep the rest of the user experience.<br>
<br>
I still use venti, in that I still maintain the venti server that<br>
takes care of backups for my old group at MIT.  It uses<br>
the plan9port venti, vbackup, and vnfs, all running on FreeBSD.<br>
The venti server itself was my last real Plan 9 installation.<br>
It's Coraid hardware, but I stripped the software and had installed<br>
my own Plan 9 kernel to run venti on it directly.  But before<br>
I left MIT, the last thing I did was reinstall the machine using<br>
FreeBSD so that others could help keep it up to date.<br>
<br>
If I wasn't interacting with anyone else it'd be nice to keep<br>
using Plan 9.  But it's also nice to be able to use off the shelf<br>
software instead of reinventing wheels (9fans runs on Linux)<br>
and to have good hardware support done by other people<br>
(I can shut my laptop and it goes to sleep, and even better,<br>
when I open it again, it wakes up!).  Being able to get those<br>
things and still keep most of the Plan 9 user experience by<br>
running Plan 9 from User Space is a compromise, but one<br>
that works well for me.<br>
<br>
Russ<br>
</code></pre>

<a href='http://9fans.net/archive/2010/02/366'>Rob Pike</a>:<br>
<pre><code>What Russ says is true but for me it was simpler. I used Plan 9 as my<br>
local operating system for a year or so after joining Google, but it<br>
was just too inconvenient to live on a machine without a C++ compiler,<br>
without good NFS and SSH support, and especially without a web<br>
browser.  I switched to Linux but found it very buggy (the main<br>
problem was most likely a bad graphics board and/or driver, but still)<br>
and my main collaborator (Robert Griesemer) had done the ground work<br>
to get a Mac working as a primary machine inside Google, and Russ had<br>
plan9port up, so I pushed plan9port onto the Mac and have been there<br>
ever since, quite happily.  Nowadays Apples are officially supported<br>
so it's become easy, workwise.<br>
<br>
I miss a lot of what Plan 9 did for me, but the concerns at work override that.<br>
<br>
-rob<br>
</code></pre>

<h3>0.2.4 - What is the deal with Plan 9's weird license?</h3>
<img src='http://9front.org/img/intellectualproperty.jpg' width='500'>

Over the years Plan 9 has been released under various licenses, to the consternation of many.<br>
<br>
The first edition, released in 1992, was made available only to universities. The process for acquiring the software was convoluted and prone to clerical error. Many potential users had trouble obtaining it within a reasonable time frame and many complaints were voiced on the eventual Plan 9 Internet mailing list.<br>
<br>
The second edition, released in 1995 in book-and-CD form under a relatively standard commercial license, was available via mailorder as well as through a special telephone number for a price of approximately $350 USD.<br>
<br>
<h4>0.2.4.1 - Richard Stallman hates the Plan Nine license (circa 2000)</h4>
In the year 2000, the third edition of Plan 9 was finally released under a custom "open source" license, the [http:// Plan 9 License]. <a href='https://stallman.org/'>Richard Stallman</a> was not impressed:<br>
<br>
<pre><code>When I saw the announcement that the Plan Nine software had been released<br>
as "open source", I wondered whether it might be free software as well.<br>
After studying the license, my conclusion was that it is not free; the<br>
license contains several restrictions that are totally unacceptable for<br>
the Free Software Movement. (See http://www.gnu.org/philosophy/free-sw.html.)<br>
</code></pre>

Read more <a href='http://www.linuxtoday.com/developer/2000070200704OPLFSW'>here</a>.<br>
<br>
<h4>0.2.4.2 - Theo de Raadt hates the Plan 9 license (circa 2003)</h4>
In the year 2002, the fourth edition of Plan 9 was released under the [http:// Lucent Public License]. Theo de Raadt was not impressed:<br>
<br>
<pre><code>The new license is utterly unacceptable for use in a BSD project.<br>
<br>
Actually, I am astounded that the OSI would declare such a license<br>
acceptable.<br>
<br>
That is not a license which makes it free.  It is a *contract* with<br>
consequences; let me be clear -- it is a contract with consequences<br>
that I am unwilling to accept.<br>
</code></pre>

Read more <a href='http://9fans.net/archive/2003/06/270'>here</a>.<br>
<br>
<h4>0.2.4.3 - Everyone hates the Plan 9 license (circa 2014)</h4>
In 2014, portions of the Plan 9 source code were again re-licensed, this time under the <a href='http://www.gnu.org/licenses/gpl-2.0.html'>GPLv2</a>, for distribution with the <a href='http://en.wikipedia.org/wiki/University_of_California,_Berkeley'>University of California, Berkeley</a>'s <a href='http://akaros.cs.berkeley.edu/akaros-web/'>Akaros</a> operating system. Various parties were not impressed.<br>
<br>
Russ Cox tried to make sense of the situation by commenting in a <a href='https://news.ycombinator.com/item?id=7232511'>Hacker News thread</a>:<br>
<pre><code>When you ask "why did big company X make strange choice Y regarding<br>
licensing or IP", 99 times out of 100 the answer is "lawyers". If the Plan<br>
9 group had had its way, Plan 9 would have been released for free under a<br>
trivial MIT-like license (the one used for other pieces of code, like the<br>
one true awk) in 2003 instead of creating the Lucent Public License. Or in<br>
2000 instead of creating the "Plan 9 License". Or in 1995 instead of as a<br>
$350 book+CD that came with a license for use by an entire "organization".<br>
Or in 1992 instead of being a limited academic release.<br>
<br>
Thankfully I am not at Lucent anymore and am not privy to the tortured<br>
negotiations that ended up at the obviously inelegant compromise of "The<br>
University of California, Berkeley, has been authorised by Alcatel-Lucent<br>
to release all Plan 9 software previously governed by the Lucent Public<br>
License, Version 1.02 under the GNU General Public License, Version 2." But<br>
the odds are overwhelming that the one-word answer is "lawyers".<br>
</code></pre>

<h2>0.3 - Further Reading</h2>
<h3>0.3.1 - Plan 9 papers</h3>
<a href='http://doc.cat-v.org/plan_9/'>http://doc.cat-v.org/plan_9/</a>

<h3>0.3.2 - Man pages</h3>
<a href='http://man.aiju.de/1/'>Section (1)</a> for general publicly accessible commands.<br>
<br>
<a href='http://man.aiju.de/2/'>Section (2)</a> for library functions, including system calls.<br>
<br>
<a href='http://man.aiju.de/3/'>Section (3)</a> for kernel devices (accessed via bind(1)).<br>
<br>
<a href='http://man.aiju.de/4/'>Section (4)</a> for file services (accessed via mount).<br>
<br>
<a href='http://man.aiju.de/5/'>Section (5)</a> for the Plan 9 file protocol.<br>
<br>
<a href='http://man.aiju.de/6/'>Section (6)</a> for file formats.<br>
<br>
<a href='http://man.aiju.de/7/'>Section (7)</a> for databases and database access programs.<br>
<br>
<a href='http://man.aiju.de/8/'>Section (8)</a> for things related to administering Plan 9.<br>
<br>
<h3>0.3.3 - Web pages</h3>
The official website for the Plan 9 project is located at: <a href='http://plan9.bell-labs.com/plan9'>http://plan9.bell-labs.com/plan9</a>.<br>
<br>
Bell Labs Plan 9 wiki: <a href='http://www.plan9.bell-labs.com/wiki/plan9/plan_9_wiki'>http://www.plan9.bell-labs.com/wiki/plan9/plan_9_wiki</a>.<br>
<br>
A lot of valuable information can be found at <a href='http://cat-v.org'>cat-v.org</a> regarding aspects of UNIX, Plan 9 and software in general.<br>
<br>
<h3>0.3.4 - Books</h3>
<img src='http://9front.org/img/books.jpg' width='500'>

<a href='http://plan9.stanleylieber.com/_books/comp/plan9/Introduction.To.OS.Abstractions.Using.Plan.9.From.Bell.Labs.draft.2007.pdf'>Introduction to OS Abstractions Using Plan 9 From Bell Labs</a>, by <a href='http://lsub.org/who/nemo'>Francisco J Ballestros (nemo)</a>

<a href='http://plan9.stanleylieber.com/_books/comp/plan9/Notes.On.The.Plan.9.3rd.Edition.Kernel.Source.pdf'>Notes on the Plan 9 3rd Edition Kernel</a>, by <a href='http://lsub.org/who/nemo'>Francisco J Ballestros (nemo)</a>

<a href='http://books.cat-v.org/computer-science/unix-programming-environment/'>The UNIX Programming Environment</a>, by <a href='http://genius.cat-v.org/brian-kernighan/'>Brian W. Kernighan</a> and <a href='http://genius.cat-v.org/rob-pike/'>Rob Pike</a> (this book is the most clear, concise and eloquent expression of the Unix and 'tool' philosophies to date)<br>
<br>
<br>
<a href='fqa.md'>Index</a> <a href='fqa1.md'>To Section 1 - Introduction to 9front</a>