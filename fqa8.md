[Index](fqa.md) [To Section 7 - System Management](fqa7.md) [To Section 9 - Troubleshooting](fqa9.md)

# 8 - Using 9front #

## Table of Contents ##
[8.1 - rc](fqa8#8.1_-_rc.md)

[8.1.1 - Prompts](fqa8#8.1.1_-_Prompts.md)

[8.1.2 - /env](fqa8#8.1.2_-_/env.md)

[8.2 - rio](fqa8#8.2_-_rio.md)

[8.2.1 - The Pop-up Menu](fqa8#8.2.1_-_The_Pop-up_Menu.md)

[8.2.2 - Window control](fqa8#8.2.2_-_Window_control.md)

[8.2.3 - Text in rio windows](fqa8#8.2.3_-_Text_in_rio_windows.md)

[8.2.4 - Scrolling](fqa8#8.2.4_-_Scrolling.md)

[8.2.5 - Mouse Chording](fqa8#8.2.5_-_Mouse_Chording.md)

[8.2.6 - Keyboard Shortcuts](fqa8#8.2.6_-_Keyboard_Shortcuts.md)

[8.2.7 - Color scheme](fqa8#8.2.7_-_Color_scheme.md)

[8.2.8 - Why is rio like this?](fqa8#8.2.8_-_Why_is_rio_like_this?.md)

[8.2.9 - tips](fqa8#8.2.9_-_tips.md)

[8.2.9.1 - Taking a screenshot](fqa8#8.2.9.1_-_Taking_a_screenshot.md)

[8.3 - Text Editors](fqa8#8.3_-_Text_Editors.md)

[8.3.1 - sam](fqa8#8.3.1_-_sam.md)

[8.3.1.1 - Scrolling](fqa8#8.3.1.1_-_Scrolling.md)

[8.3.1.2 - Mouse Chording](fqa8#8.3.1.2_-_Mouse_Chording.md)

[8.3.1.3 - Why does sam have a separate snarf buffer from rio?](fqa8#8.3.1.3_-_Why_does_sam_have_a_separate_snarf_buffer_from_rio?.md)

[8.3.1.4 - Keyboard](fqa8#8.3.1.4_-_Keyboard.md)

[8.3.2 - acme](fqa8#8.3.2_-_acme.md)

[8.4 - Internet](fqa8#8.4_-_Internet.md)

[8.4.1 - Mail](fqa8#8.4.1_-_Mail.md)

[8.4.1.1 - upasfs](fqa8#8.4.1.1_-_upasfs.md)

[8.4.1.1.1 - Reading gmail via IMAP](fqa8#8.4.1.1.1_-_Reading_gmail_via_IMAP.md)

[8.4.1.2 - nedmail](fqa8#8.4.1.2_-_nedmail.md)

[8.4.1.3 - nupas](fqa8#8.4.1.3_-_nupas.md)

[8.4.2 - NNTP](fqa8#8.4.2_-_NNTP.md)

[8.4.3 - IRC](fqa8#8.4.3_-_IRC.md)

[8.4.4 - FTP](fqa8#8.4.4_-_FTP.md)

[8.4.5 - HTTP](fqa8#8.4.5_-_HTTP.md)

[8.4.5.1 - mothra](fqa8#8.4.5.1_-_mothra.md)

[8.4.5.2 - abaco](fqa8#8.4.5.2_-_abaco.md)

[8.4.5.3 - hget](fqa8#8.4.5.3_-_hget.md)

[8.4.5.4 - charon](fqa8#8.4.5.4_-_charon.md)

[8.4.5.5 - i](fqa8#8.4.5.5_-_i.md)

[8.4.6 - SSH](fqa8#8.4.6_-_SSH.md)

[8.4.6.1 - ssh](fqa8#8.4.6.1_-_ssh.md)

[8.4.6.2 - ssh2](fqa8#8.4.6.2_-_ssh2.md)

[8.4.6.3 - scpu](fqa8#8.4.6.3_-_scpu.md)

[8.4.6.4 - OpenSSH](fqa8#8.4.6.4_-_OpenSSH.md)

[8.4.6.5 - sftpfs](fqa8#8.4.6.5_-_sftpfs.md)

[8.4.6.5.1 - Mounting a remote u9fs share over SSH](fqa8#8.4.6.5.1_-_Mounting_a_remote_u9fs_share_over_SSH.md)

[8.5 - Audio](fqa8#8.5_-_Audio.md)

[8.6 - External Media](fqa8#8.6_-_External_Media.md)

[8.6.1 - Mount an ISO9660 CD-ROM](fqa8#8.6.1_-_Mount_an_ISO9660_CD-ROM.md)

[8.6.2 - Burn a CD-ROM](fqa8#8.6.2_-_Burn_a_CD-ROM.md)

[8.6.3 - Mount a FAT formatted USB device](fqa8#8.6.3_-_Mount_a_FAT_formatted_USB_device.md)

[8.7 - Emulation](fqa8#8.7_-_Emulation.md)

[8.7.1 - Linux Emulation](fqa8#8.7.1_-_Linux_Emulation.md)

[8.7.2 - Nintendo](fqa8#8.7.2_-_Nintendo.md)

[8.7.3 - Sega](fqa8#8.7.3_-_Sega.md)

[8.8 - Additional Software](fqa8#8.8_-_Additional_Software.md)

[8.8.1 - 9front sources server](fqa8#8.8.1_-_9front_sources_server.md)

[8.8.2 - 9front contrib](fqa8#8.8.2_-_9front_contrib.md)

[8.9 - Bootstrapping architectures not included on the ISO](fqa8#8.9_-_Bootstrapping_architectures_not_included_on_the_ISO.md)

[8.9.1 - amd64](fqa8#8.9.1_-_amd64.md)

[8.9.2 - Raspberry Pi](fqa8#8.9.2_-_Raspberry_Pi.md)

## 8.1 - rc ##
The `rc` shell was written by [Tom Duff](http://en.wikipedia.org/wiki/Tom_Duff) for [Research UNIX v10](http://www.cs.bell-labs.com/10thEdMan). It was later adopted as the shell for Plan 9. Some of its conventions are unusual compared with other command interpreters influenced by the [Bourne shell](http://en.wikipedia.org/wiki/Bourne_shell). Have patience; `rc` was wrought for a reason.

[http://doc.cat-v.org/plan\_9/4th\_edition/papers/rc](http://doc.cat-v.org/plan_9/4th_edition/papers/rc)

[rc(1) man page](http://man.aiju.de/1/rc)

### 8.1.1 - Prompts ###
Creating an `rc` function with the same name as your prompt allows you to easily double-click to select at the end of a previously typed line and then `send` it using the mouse button 2 menu (see the discussion of `rio` menus, below). This can be used to approximate a form of command history (see also the commands ["](http://code.google.com/p/plan9front/source/browse/rc/bin/%22) and [""](http://code.google.com/p/plan9front/source/browse/rc/bin/%22%22), which print and execute the previous command, respectively).

Add something like this to your `$home/profile`:

`fn term%{ $* } `

In `rc` the ` ; ` character forces the end of a line and is treated as a noop when it appears alone, so it is also possible to create a simple prompt that would require no special prompt function in order for the prompt to be effectively ignored when selecting and sending:

`prompt='; '`

### 8.1.2 - /env ###
<b>Note:</b> Contents of the `/env` directory represent a separate accounting of the environment; `rc` reads `/env` on startup, and flushes/writes `/env` only before executing programs.
## 8.2 - rio ##
<img src='http://9front.org/img/what.jpg' width='600'>

Rio is the Plan 9 window system.<br>
<br>
<a href='http://man.aiju.de/1/rio'>rio(1) man page</a>

<a href='http://man.aiju.de/4/rio'>rio(4) man page</a>

To effectively use rio, you need a three button mouse. If you only have a two button mouse you can emulate the middle button by holding down the <code>shift</code> key whilst pressing the right button.<br>
<br>
<b>Note:</b>  Button 1, 2, and 3 are used to refer to the left, middle, and right buttons respectively.<br>
<br>
<h3>8.2.1 - The Pop-up Menu</h3>
Pressing and holding down mouse button 3 on the gray desktop or on a shell window will give you a menu with the following options:<br>
<br>
<ul><li>New</li></ul>

<ul><li>Resize</li></ul>

<ul><li>Move</li></ul>

<ul><li>Delete</li></ul>

<ul><li>Hide</li></ul>

Pressing and holding down mouse button 2 results in a menu with the following options:<br>
<br>
<ul><li>cut</li></ul>

<ul><li>paste</li></ul>

<ul><li>snarf</li></ul>

<ul><li>plumb</li></ul>

<ul><li>look</li></ul>

<ul><li>send</li></ul>

<ul><li>scroll</li></ul>

Select an item by releasing the button over the menu item. Rio uses the same button that started an action throughout that operation. If you press another button during the action the operation is aborted and any intermediate changes are reversed.<br>
<br>
Each menu acts as a action verb selector which then requires an object (i.e. window) to be picked to indicate which window the verb is to act on. A further mouse action may then be required.<br>
<br>
<h3>8.2.2 - Window control</h3>
Clicking on a window brings it to the front.<br>
<br>
You can directly change the shape of a window by clicking and dragging on the edge or corner of the window<br>
border. Mouse button 1 or 2 will allow you to drag the edge or corner to a new size, and mouse button 3 will allow you to<br>
move the window.<br>
<br>
The mouse button 3 menu contains a list of all windows that are corrently obstructed by other windows. Selecting a label tops the window.<br>
<br>
The pop-up menu remembers the last command chosen, so as a shortcut you can just press and release button<br>
3 without moving the mouse between pressing and releasing to select the previous command again.<br>
<br>
<h3>8.2.3 - Text in rio windows</h3>
Text in a <code>rio</code> window may be freely manipulated, edited, altered, deleted and/or acted upon using either mouse chords or the options from the mouse button menus. (For an example, see the discussion of the use of <code>rc</code> prompts, above.)<br>
<br>
<h3>8.2.4 - Scrolling</h3>
By default, a rio window will fill up with text and then block.<br>
<br>
Endless scrolling may be enabled by selecting <code>scroll</code> from the mouse button 2 menu.<br>
<br>
The <code>up</code> or <code>down</code> arrow keys and <code>pgup</code> or <code>pgdwn</code> keys may be used to scroll up or down in consistently measured increments.<br>
<br>
Holding down the <code>shift</code> key and pressing the up or down arrow key will scroll a single line in the respective direction.<br>
<br>
9front's rio supports mousewheel scrolling. The heuristic employed is roughly the same as that of clicking in the scrollbar on the left of the window: when the mouse pointer is near the top of the window the scrolling increment is small, while as the mouse pointer approaches the bottom of the window the scrolling increment is progressively larger. Presently this behavior is limited to <code>rio</code>, <code>sam</code> and <code>mothra</code> but may later be extended to other programs.<br>
<br>
<b>Note:</b> While the behavior of the arrow and page keys is fairly consistent between programs, mousewheel scrolling is not. So far, <code>shift</code>+<code>up</code> or <code>down</code> is only supported in rio windows.<br>
<br>
<h3>8.2.5 - Mouse Chording</h3>
click more buttons<br>
<br>
<h3>8.2.6 - Keyboard Shortcuts</h3>
Almost anywhere (<a href='http://man.aiju.de/1/sam'>sam(1)</a>, <a href='http://man.aiju.de/1/acme'>acme(1)</a>, <a href='http://man.aiju.de/1/rio'>window(1)</a>) you can use the following shortcuts:<br>
<br>
<code>Ctrl-u</code> Delete from cursor to start of line.<br>
<br>
<code>Ctrl-w</code> Delete word before the cursor.<br>
<br>
<code>Ctrl-h</code> Delete character before the cursor.<br>
<br>
<code>Ctrl-a</code> Move cursor to start of the line.<br>
<br>
<code>Ctrl-e</code> Move cursor to end of the line.<br>
<br>
<code>Ctrl-b</code> Move cursor to the position immediately after the prompt. (<code>rio</code> only)<br>
<br>
See: <a href='http://unix-kb.cat-v.org'>UNIX Keyboard Bindings</a>

In a <a href='http://man.aiju.de/1/rio'>rio(1)</a> window, scroll up or down one line by holding <code>shift</code> and pressing the up or down arrow.<br>
<br>
<h3>8.2.7 - Color scheme</h3>
Rio looks like this:<br>
<br>
<img src='http://plan9.bell-labs.com/plan9/img/screenshot-small.png'>

Rio's color scheme may be modified by editing the .c configuration files and re-compiling:<br>
<br>
<img src='http://plan9.stanleylieber.com/rio/img/20131026.png' width='600'>

<b>Note:</b> Someone will mock you for doing this.<br>
<br>
See: <a href='http://plan9.stanleylieber.com/rio'>http://plan9.stanleylieber.com/rio</a>

<pre><code>the clean appearance of the screen comes mostly from laziness, but the<br>
color scheme is (obviously) deliberate. the intent was to build on an<br>
observation by edward tufte that the human system likes nature and <br>
nature is full of pale colors, so something you're going to look at all day <br>
might best serve if it were also in relaxing shades.  renee french helped me with <br>
the specifics of the color scheme (she's a professional illustrator and my <br>
color vision is suspect), once i'd figured out how i wanted it to look.  <br>
there are still some features of the color system that i put in that i think no <br>
one has ever noticed.  that's a good thing, in my opinion; the colors should <br>
fade away, if you'll pardon the expression. having used other systems with<br>
different approaches to color screens, most especially windows XP (extra pukey),<br>
i think tufte was right.<br>
</code></pre>

<a href='http://9fans.net/archive/2003/09/442'>Rob Pike, 2003</a>

<pre><code>The color scheme was an attempt to honor a point made originally<br>
in a little brochure by Edward Tufte that the colors of nature are<br>
soft and quiet and peaceful to look at, while most computer screens<br>
are covered in glaring bright colors.  When color came to the system<br>
I wanted it to be pleasant.<br>
</code></pre>

<a href='http://9fans.net/archive/2008/06/499'>Rob Pike, 2008</a>

See also: <a href='http://www.edwardtufte.com/tufte/'>edwardtufte.com</a>

<h3>8.2.8 - Why is rio like this?</h3>
<img src='http://9front.org/img/mouse.gif'>

Window systems should be transparent. That's the argument put forward in <a href='http://doc.cat-v.org/bell_labs/transparent_wsys/'>the famous paper</a> by rio's author, <a href='http://genius.cat-v.org/rob-pike/'>Rob Pike</a>.<br>
<br>
Beyond this, Rob offered <a href='http://9fans.net/archive/2001/05/262'>an explanantion</a> (in response to a question on the 9fans mailing list) of some of the choices made in the design of 8½ and rio:<br>
<br>
<pre><code>&gt; functioning cursor keys would still be a speed benefit.<br>
<br>
This feels true but is false.  There were some fascinating experiments<br>
done a few years ago in which people were given a long, tedious<br>
editing task.  Some of the people were keyboard fans, some were mouse<br>
fans.  Both folks were asked to do the task two ways, in random order,<br>
once using the mouse to do the editing, once using cursor keys etc.<br>
Regardless of their predilections, which was stated up front, after<br>
the experiment everyone who did the task agreed that it was faster to<br>
use the keyboard than the mouse to complete the task.  Everyone.<br>
Here's the kicker: everyone was wrong.  They were being timed, and in<br>
fact the reverse was true.  Although they thought the keyboard was<br>
faster, doing the task using the mouse was faster for everyone, by a<br>
substantial fraction.<br>
<br>
The explanation, besides the obvious that arrow keys are actually<br>
pretty slow if you're going more than a line or character, is that<br>
people feel the mouse wastes time because you need to grab it and move<br>
it, but it's time well spent.  The part of the brain that uses<br>
keyboard commands to move the cursor is a higher-order function, and<br>
thinking and planning how to use the keys to get to the destination<br>
blocks thinking about the editing task at hand.  But using the mouse<br>
is done by a lower-order part of the brain, which keeps the editing<br>
part of the brain clear.  There's less task switching going on when<br>
you use the mouse, so you work more efficiently.<br>
<br>
If you don't believe me, the story is here:<br>
<br>
http://www.asktog.com/readerMail/1999-12ReaderMail.html<br>
<br>
Thanks to some forgotten 9fan who mentioned this a while back.<br>
I didn't know about these experiments when I said, long ago, that<br>
using arrow keys to point at a display is like telling someone how to<br>
go somewhere by giving directions, while using a mouse is like<br>
pointing at a map.  In fact, I never used a screen editor until I had<br>
a mouse, for just this reason.<br>
</code></pre>

<a href='http://9fans.net/archive/2001/05/262'>Rob Pike, 2001</a>

<h3>8.2.9 - tips</h3>
<h4>8.2.9.1 - Taking a screenshot</h4>
To capture the entire screen:<br>
<code>topng &lt;/dev/screen &gt;screen.png</code>

To capture only the current window:<br>
<code>topng &lt;/dev/window &gt;window.png</code>

<h2>8.3 Text Editors</h2>
<h3>8.3.1 - sam</h3>
<a href='http://sam.cat-v.org'>http://sam.cat-v.org</a>

<a href='http://doc.cat-v.org/plan_9/4th_edition/papers/sam/'>The Text Editor sam</a> - The original paper by Rob Pike.<br>
<br>
<a href='http://doc.cat-v.org/bell_labs/sam_lang_tutorial/'>A Tutorial for the Sam Command Language</a> - Documents the editing language.<br>
<br>
<a href='http://sam.cat-v.org/cheatsheet/'>sam quick reference card</a>

<a href='http://man.aiju.de/1/sam'>sam(1) man page</a>

<img src='http://9front.org/img/danflavin.jpg'>

<a href='http://www.moma.org/collection/artist.php?artist_id=1911'>Dan Flavin</a>, <i>Document for Untitled (to the “innovator” of Wheeling Peachblow)</i> (1968)<br>
<br>
<h4>8.3.1.1 - Scrolling</h4>
9front's slightly modified version of <code>sam</code> supports mousewheel scrolling in the same manner as <code>rio</code>.<br>
<br>
See: <a href='fqa8#8.2.4_-_Scrolling.md'>8.2.4 - Scrolling</a>

<h4>8.3.1.2 - Mouse Chording</h4>
9front <code>sam</code> supports the same mouse chording as <code>rio</code>.<br>
<br>
<h4>8.3.1.3 - Why does sam have a separate snarf buffer from rio?</h4>
<pre><code>was a consequence of running over 1200 baud when sam was first<br>
written.  you didn't want every cut and paste to bounce off the remote<br>
end at that speed.  nowadays that argument has less weight.  on the<br>
other hand, i still kinda like that you can have an editing session<br>
that doesn't corrupt what you have in rio's snarf buffer.  i tried the<br>
unified way in acme and i often (not always) miss the old way.<br>
</code></pre>

<a href='http://9fans.net/archive/2003/07/137'>Rob Pike, 2003</a>

<h4>8.3.1.4 - Keyboard</h4>
<code>Esc</code> Cut (and consequently, snarf) the selected text.<br>
<br>
<code>Ctrl-b</code> Switch focus to the edit window.<br>
<br>
<h3>8.3.2 - acme</h3>
no.<br>
<br>
<img src='http://9front.org/img/poster_cyclogram_big.gif'>

<a href='http://www.edwardtufte.com/tufte/posters'>Handmade cyclogram</a> by Russian cosmonaut, Georgi Grechko.<br>
<br>
<h2>8.4 - Internet</h2>
Sending and receiving bits via alien protocols.<br>
<br>
<h3>8.4.1 - Mail</h3>
See: <a href='http://man.aiju.de/1/mail'>mail(1)</a>, <a href='fqa7#7.7_-_Mail_server_configuration_and_maintenance.md'>7.7 - Mail server configuration and maintenance</a>

<h4>8.4.1.1 - upasfs</h4>
From <a href='http://man.aiju.de/4/upasfs'>upasfs(4)</a>:<br>
<br>
<pre><code>Fs is a user level file system that caches mailboxes and<br>
presents them as a file system.  A user normally starts fs<br>
in his/her profile after starting plumber(4) and before<br>
starting a window system, such as rio(1) or acme(1). The<br>
file system is used by nedmail(1), acme(1)'s mail reader,<br>
and imap4d and pop3 (both pop3(8)) to parse messages.  Fs<br>
also generates plumbing messages used by biff and faces(1)<br>
to provide mail announcements.<br>
</code></pre>

See: <a href='http://man.aiju.de/4/upasfs'>upasfs(4)</a>, <a href='http://man.aiju.de/8/pop3'>pop3(8)</a>, <a href='http://man.aiju.de/1/faces'>faces(1)</a>

<h5>8.4.1.1.1 - Reading gmail via IMAP</h5>
<pre><code>upas/fs -f /imaps/imap.gmail.com/your.username@gmail.com<br>
</code></pre>

The first time this command is run, you should see an error that looks something like this:<br>
<br>
<pre><code>upas/fs imap: server certificate 22471E10D5C1E41768048EF5567B27F532F33 not recognized<br>
upas/fs: opening mailbox: bad server certificate<br>
</code></pre>

To add this certificate to your system, type:<br>
<br>
<pre><code>echo 'x509 sha1=22471E10D5C1E41768048EF5567B27F532F33' &gt;&gt;/sys/lib/tls/mail<br>
</code></pre>

<b>Note:</b> <code>upas/fs</code> reads the entire mailbox into RAM, which means it may fail to load mailboxes that exceed the available system memory. This problem has been addressed in Erik Quanstrom's <a href='fqa8#8.4.1.3_-_nupas.md'>nupas</a>.<br>
<br>
<h4>8.4.1.2 - nedmail</h4>
<code>nedmail</code> is a command line mail client similar to the classic mail client shipped with Research UNIX.<br>
<br>
See: <a href='http://man.aiju.de/1/nedmail'>nedmail(1)</a>

<h4>8.4.1.3 - nupas</h4>
See: <a href='http://plan9.stanleylieber.com/_books/comp/unix/research/nupas.pdf'>Scaling Upas</a>, by Erik Quanstrom<br>
<br>
Download, pre-patched for 9front: <a href='http://plan9.stanleylieber.com/src/nupas.tgz'>nupas.tgz</a>

<b>Note:</b> Installing <code>nupas</code> replaces the system's <code>upas</code>.<br>
<br>
<h3>8.4.2 - NNTP</h3>
See: <a href='http://man.aiju.de/1/newt'>newt(1)</a>, <a href='http://man.aiju.de/4/nntpfs'>nntpfs(4)</a>

<h3>8.4.3 - IRC</h3>
See: <a href='http://man.aiju.de/1/ircrc'>ircrc(1)</a>

<h3>8.4.4 - FTP</h3>
See: <a href='http://man.aiju.de/4/ftpfs'>ftpfs(4)</a>

<h3>8.4.5 - HTTP</h3>
<img src='http://9front.org/img/wwwhat.gif'>

<h4>8.4.5.1 - mothra</h4>
<img src='http://plan9.stanleylieber.com/mothra/img/betweenthelines.jpg'>

Mothra is a trivial web browser written in 1995 by Tom Duff. It ignores Javascript, CSS and many HTML tags. It was dropped from Plan 9 after the 2nd Edition, but has been picked up and (somewhat) refined for 9front.<br>
<br>
See: <a href='http://man.aiju.de/1/mothra'>mothra(1)</a>

<h4>8.4.5.2 - abaco</h4>
no.<br>
<br>
<h4>8.4.5.3 - hget</h4>
See: <a href='http://man.aiju.de/1/hget'>hget(1)</a>

<h4>8.4.5.4 - charon</h4>
The <a href='http://en.wikipedia.org/wiki/Inferno_os'>Inferno</a> operating system can be run hosted on Plan 9, and includes a GUI web browser called <a href='http://en.wikipedia.org/wiki/Charon_(web_browser)'>charon</a>, which implements ECMASCRIPT 1.0 as well as additional HTML attributes.<br>
<br>
<b>Note:</b> Charon is ancient and is not really a sufficient replacement for 9front's web browsers. The rudimentary javascript support can be useful for some simple tasks.<br>
<br>
<h4>8.4.5.5 - i</h4>
There exists an unfinished/buggy port of charon from Inferno's limbo programming language to Plan 9 c. Source is available here:<br>
<br>
<a href='http://plan9.stanleylieber.com/src/i.tgz'>i.tgz</a>

<h3>8.4.6 - SSH</h3>
Several SSH clients exist for Plan 9, none of which are perfect.<br>
<br>
<h4>8.4.6.1 - ssh</h4>
9front ships with the original Plan 9 native SSH1 client from Bell Labs.<br>
<br>
See: <a href='http://man.aiju.de/1/ssh'>ssh(1)</a>

<h4>8.4.6.2 - ssh2</h4>
Programmers at <a href='http://www.coraid.com'>Coraid</a> created a Plan 9 native SSH2 client that was picked up (and completely rewritten) by Bell Labs. It is currently not included with 9front.<br>
<br>
Download it here: <a href='http://plan9.stanleylieber.com/src/ssh2.tgz'>ssh2.tgz</a>

<h4>8.4.6.3 - scpu</h4>
Two 9front users (taruti and mischief) worked on an SSH2 client written in the <a href='golang.md'>Go programming language</a>. It has been extended to work with Plan 9 <a href='http://man.aiju.de/4/factotum'>factotum(4)</a>.<br>
<br>
Download it here: <a href='https://bitbucket.org/mischief/scpu'>https://bitbucket.org/mischief/scpu</a>

or from mischief's <a href='http://man.aiju.de/1/pkg'>pkg(1)</a> <a href='https://offblast.org/pkg/386'>https://offblast.org/pkg/ repository</a>.<br>
<br>
<h4>8.4.6.4 - OpenSSH</h4>
Plan 9 user fgb ported OpenSSH 4.7p1, OpenSSL 0.9.8g 19 Oct 2007 to Plan 9. It is available in his contrib directory, or a 386 binary is available from the 9front <a href='http://man.aiju.de/1/pkg'>pkg(1)</a> system.<br>
<br>
<h4>8.4.6.5 - sftpfs</h4>
An implementation of sftpfs was created for Plan 9 that can work with either the native SSH clients or fgb's OpenSSH port.<br>
<br>
Download it here: <a href='http://plan9.stanleylieber.com/src/sftpfs.tgz'>sftpfs</a>

<h5>8.4.6.5.1 - Mounting a remote u9fs share over SSH</h5>
The <code>u9fs</code> program runs on UNIX and serves an unencrypted <a href='http://man.aiju.de/2/9p'>9P(2)</a> share. It is possible to mount such a share over SSH.<br>
<br>
With <code>ssh2</code>:<br>
<br>
<pre><code>srv -s 5 -e 'ssh2 -l sl wm ''/usr/local/bin/u9fs -u sl -na none''' wm /n/wm<br>
</code></pre>

With <code>scpu</code>:<br>
<br>
<pre><code>srv -s 5 -e 'scpu -u sl -h wm -c ''/usr/local/bin/u9fs -u sl -na none''' wm /n/wm<br>
</code></pre>

In both cases, an ssh connection is opened to remote UNIX host <code>wm</code>, logged in with user <code>sl</code> and mounted on Plan 9 under <code>/n/wm</code>.<br>
<br>
See: <a href='http://man.aiju.de/4/u9fs'>u9fs(4)</a>, <a href='http://man.aiju.de/4/srv'>srv(4)</a>

<h2>8.5 - Audio</h2>
See: <a href='http://man.aiju.de/1/audio'>audio(1)</a>, <a href='http://man.aiju.de/3/audio'>audio(3)</a>

<h2>8.6 - External Media</h2>
<h3>8.6.1 - Mount an ISO9660 CD-ROM</h3>
<pre><code>mount &lt;{9660srv -s} /n/iso /dev/sdD1/data # cd-rom drive<br>
</code></pre>

or:<br>
<pre><code>mount &lt;{9660srv -s} /n/iso /path/to/9front.iso<br>
</code></pre>

See: <a href='http://man.aiju.de/4/dossrv'>dossrv(4)</a>

<h3>8.6.2 - Burn a CD-ROM</h3>
<pre><code>cdfs<br>
cp 9front.iso /mnt/cd/wd<br>
rm /mnt/cd/wd<br>
</code></pre>

See: <a href='http://man.aiju.de/4/cdfs'>cdfs(4)</a>

<h3>8.6.3 - Mount a FAT formatted USB device</h3>
FAT formatted USB devices are automatically mounted under the <code>/shr</code> directory.<br>
<br>
<b>Note:</b> Devices must be FAT or FAT32 formatted; exFAT is not supported.<br>
<br>
<h2>8.7 - Emulation</h2>
<h3>8.7.1 - Linux Emulation</h3>
<code>linuxemu</code> is a program that can execute Linux/i386 ELF binaries on Plan 9. Semi-modern web browsers and other Linux programs may be run using <code>linuxemu</code> (if necessary, in conjunction with the <code>equis</code> X11 server).<br>
<br>
Download it here: <a href='http://plan9.stanleylieber.com/src/linuxemu3.tgz'>linuxemu3.tgz</a>

The <code>equis</code> X11 server is available from <a href='http://plan9.stanleylieber.com/src'>src</a>, <a href='http://man.aiju.de/1/pkg'>pkg(1)</a> or <a href='http://www.quanstro.net/magic/man2html/1/contrib'>contrib(1)</a>).<br>
<br>
<b>Note:</b> <code>linuxemu</code> can only be run on a Plan 9 system booted with a <code>386</code> kernel and binaries.<br>
<br>
BOOTSTRAP<br>
<br>
To run <code>linuxemu</code>, you need a Linux root filesystem packed into a tarball:<br>
<br>
<a href='http://9hal.ath.cx/usr/cinap_lenrek/mroot-linuxemu.tbz'>mroot-linuxemu.tbz</a>

<a href='http://plan9.stanleylieber.com/linuxemu/mroot.tgz'>mroot.tgz</a>

The <code>mroot-linuxemu.tbz</code> version contains no symlinks and can be extracted with plain Plan 9 tools <code>bunzip</code> and <code>tar</code>.<br>
<br>
The <code>mroot.tgz</code> version contains the same Debian Sarge base as<br>
<code>mroot-linuxemu.tbz</code>, but with several additional packages pre-installed:<br>
<br>
<pre><code>9base<br>
<br>
dmenu-4.1.1<br>
<br>
dwm-5.8.2<br>
<br>
gcc 3.3.5<br>
<br>
linux-kernel-headers<br>
<br>
mercurial 0.9.4<br>
<br>
opera 10.11<br>
<br>
python 2.3.5<br>
<br>
xlib-dev<br>
</code></pre>

and more.<br>
<br>
You can create your own <code>mroot</code> with <code>debootstrap</code> on Debian Linux, or help write an installer that unpacks and installs an alternative distribution on Plan 9... In any case, <code>linuxemu</code> is not hardwired to any Linux distribution!<br>
<br>
RUNNING<br>
<br>
Use the provided <code>linux</code> script to chroot into your Linux <code>mroot</code>. The <code>linux</code> script is neccesary because for Linux programs to run, shared<br>
libraries from your <code>mroot</code> have to appear in its <code>/lib</code> and <code>/usr/lib</code> directories, while configuration files are expected to be in <code>/etc</code>. The script will build a private namespace and then bind the Linux <code>mroot</code> over the Plan 9 root. The original Plan 9 namespace is mounted within <code>linuxemu</code> under <code>/9</code>.<br>
<br>
Assuming <code>mroot</code> is located in the current directory, start <code>linuxemu</code> like this:<br>
<br>
<code>linux -r ./mroot /bin/bash -i</code>

If the <code>-r</code> option is omitted, the Linux <code>mroot</code> defaults to <code>/sys/lib/linux</code> on the Plan 9 machine.<br>
<br>
In the Linux <code>mroot</code>, <code>/etc/resolv.conf</code> should be changed to match your network nameserver. In addition, <code>/etc/apt/sources.list</code> should be updated to a working Debian mirror. (Sarge packages can still be accessed at <code>deb http://archive.debian.org/debian-archive/debian sarge main</code>)<br>
<br>
EXAMPLES<br>
<br>
Linux X11 programs may be used in conjunction with the <code>equis</code> X11 server. For example, to run the Opera web browser under your Linux <code>mroot</code>, start <code>equis</code> in a <code>rio</code> window, start <code>linuxemu</code> in another <code>rio</code> window and then from within <code>linuxemu</code>:<br>
<br>
<pre><code>dwm &amp; # X11 window manager<br>
opera &amp; # web browser<br>
</code></pre>

Opera should (eventually) appear in the <code>equis</code> window. A window manager (this example uses <code>dwm</code>) is recommended so that X11 programs interact with window resources properly.<br>
<br>
DEBUGGING<br>
<br>
If <code>linuxemu</code> crashes, use acid to figure out whats going on:<br>
<br>
<pre><code>mk acid<br>
acid -l linuxemu.acid &lt;pid&gt;<br>
</code></pre>

Then you can issue the following commands:<br>
<br>
<pre><code>ustk()<br>
</code></pre>

dump a (userspace) stacktrace for the current thread:<br>
<br>
<pre><code>umem(Current())                 dump the memory mappings<br>
ufds(Current())                 dump the filedescriptor table<br>
utrace(Current())               dump the internal tracebuffer (enabled by -d option)<br>
</code></pre>

Use <code>xasm()</code> and <code>xcasm()</code> for disassembly for Linux code.<br>
<br>
See: <a href='http://man.aiju.de/1/acid'>acid(1)</a>

You can also enable full trace logging:<br>
<br>
<pre><code>linux -r ./mroot -dd /bin/bash -i &gt;[2]/tmp/linuxemu.log<br>
</code></pre>

This slows <code>linuxemu</code> down considerably. In case of race conditions, it often happens that the bug disapears when doing full trace logging!<br>
<br>
<h3>8.7.2 - Nintendo</h3>
Emulators for several Nintendo video game consoles (<a href='http://code.google.com/p/plan9front/source/browse/sys/src/games/gb'>gb</a>, <a href='http://code.google.com/p/plan9front/source/browse/sys/src/games/gba'>gba</a>, <a href='http://code.google.com/p/plan9front/source/browse/sys/src/games/nes'>nes</a>, <a href='http://code.google.com/p/plan9front/source/browse/sys/src/games/snes'>snes</a>) ship with the system.<br>
<br>
See: <a href='http://man.aiju.de/1/nintendo'>nintendo(1)</a>

<h3>8.7.3 - Sega</h3>
An emulator for the Sega Megadrive/Genesis video game console ships with the system.<br>
<br>
See: <a href='http://man.aiju.de/1/sega'>sega(1)</a>

<h2>8.8 - Additional Software</h2>
<h3>8.8.1 - 9front sources server</h3>
Additional 9front software is available from a 9P share that is accessible from any Plan 9 system:<br>
<br>
<pre><code>9fs 9front.org<br>
</code></pre>

The following files and directories will then be available under <code>/n/9front.org/</code>:<br>
<br>
<code>9front/</code> - 9front source<br>
<br>
<code>9front.torrent</code> - torrent of current 9front ISO image<br>
<br>
<code>extra/</code> - third party software source<br>
<br>
<code>rc/</code> - third party rc scripts<br>
<br>
<code>iso/</code> - current 9front ISO image(s)<br>
<br>
<code>pkg/</code> - <a href='http://man.aiju.de/1/pkg'>pkg(1)</a> repository<br>
<br>
<h3>8.8.2 - 9front contrib</h3>
Some 9front users maintain a contrib directory on an official 9front 9P share (similar to the <a href='http://www.plan9.bell-labs.com/wiki/plan9/Contrib_index/index.html'>contrib</a> arrangement provided by Bell Labs) that is accessible from any Plan 9 system:<br>
<br>
<pre><code>9fs contrib.9front.org<br>
</code></pre>

The following files and directories will then be available under <code>/n/contrib.9front.org/</code>:<br>
<br>
<code>contrib/</code> - directory tree containing user directories<br>
<br>
<code>lsr</code> - index of files under <code>contrib/</code> (generated daily)<br>
<br>
<h2>8.9 - Bootstrapping architectures not included on the ISO</h2>
<h3>8.9.1 - amd64</h3>
To setup the <code>amd64</code> port, install the <code>386</code> port from the ISO, then cross compile and install the <code>amd64</code> binaries and kernel.<br>
<br>
See: <a href='fqa5#5.2.2.1_-_Cross_compiling.md'>5.2.2.1 - Cross compiling</a>, <a href='fqa7#7.2.5_-_How_do_I_install_a_new_kernel?.md'>7.2.5 - How do I install a new kernel?</a>

<h3>8.9.2 - Raspberry Pi</h3>
See: <a href='9pi.md'>9pi</a>

<a href='fqa.md'>Index</a> <a href='fqa7.md'>To Section 7 - System Management</a> <a href='fqa9.md'>To Section 9 - Troubleshooting</a>