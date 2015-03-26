# MP Table Override #

_This horrible hack should be considered obsolete, in particular with the implementation of APIC renaming and MSI. It might still be useful._

Since some motherboard/BIOS manufacturer don't care about anything but ACPI, the MP table might be in an unusable state which meant that `*nomp=1` had to be used. The new MP Table Override can be used to specify an entirely different MP table for 9front to use.

To specify an MP table the `*mp` and `*mp`_N_ options are used, for example (for illustration purposes, not a valid mp table):
```
*mp=16
*mp0=00 11 33 13 15
*mp1=16 99 DD 1C
*mp2=9F 81 2a 0a 7b 8c 1c
```
`*mp` specifies the size in byte and `*mp`_N_, where N is a consecutive number starting with zero, specifies the data in hex form.

The in-hardware table can be dumped with `*dumpmp=1` (PROTIP: use a serial console).

[/sys/src/9/pc/mp.h](http://code.google.com/p/plan9front/source/browse/sys/src/9/pc/mp.h) is useful to have handy.

# To Do #
(Some are mutually exclusive)

  * Write an utility to generate a proper table from Linux or similar
  * Write user space tools to manipulate the mp table
  * Calculate size automatically (and drop `*mp`)
  * Use a text based format parsed by the kernel
  * Fix MP support altogether (might not be feasible)

# Example #

For the HP Compaq DC5700
```

*mp=528
*mp0=00 00 10 03 65 0f 00 00 ff fb eb bf 00 00 00 00 
*mp1=00 00 00 00 00 01 10 01 65 0f 00 00 ff fb eb bf 
*mp2=00 00 00 00 00 00 00 00 01 00 50 43 49 20 20 20 
*mp3=01 01 50 43 49 20 20 20 01 07 50 43 49 20 20 20 
*mp4=01 20 50 43 49 20 20 20 01 ff 49 53 41 20 20 20 
*mp5=02 02 11 01 00 00 c0 fe 03 00 0f 00 00 08 02 10 
*mp6=03 00 0f 00 00 09 02 11 03 00 0f 00 00 0c 02 10 
*mp7=03 00 0f 00 00 0d 02 11 03 00 0f 00 00 0e 02 12 
*mp8=03 00 0f 00 00 74 02 14 03 00 0f 00 00 75 02 15 
*mp9=03 00 0f 00 00 76 02 16 03 00 0f 00 00 77 02 17 
*mp10=03 00 0f 00 00 68 02 14 03 00 0f 00 00 69 02 15 
*mp11=03 00 0f 00 00 6a 02 16 03 00 0f 00 00 01 02 13 
*mp12=03 00 0f 00 00 6c 02 15 03 00 0f 00 00 7c 02 11 
*mp13=03 00 0f 00 00 7d 02 12 03 00 0f 00 00 7e 02 12 
*mp14=03 00 0f 00 00 70 02 14 03 00 0f 00 00 71 02 15 
*mp15=03 00 0f 00 00 72 02 16 03 00 0f 00 00 73 02 17 
*mp16=03 00 0f 00 07 10 02 14 03 00 0f 00 07 11 02 15 
*mp17=03 00 0f 00 07 12 02 16 03 00 0f 00 07 13 02 17 
*mp18=03 00 0f 00 07 24 02 15 03 00 0f 00 07 25 02 16 
*mp19=03 00 0f 00 07 26 02 17 03 00 0f 00 07 27 02 14 
*mp20=03 00 0f 00 07 2c 02 16 03 00 0f 00 07 2d 02 17 
*mp21=03 00 0f 00 07 2e 02 14 03 00 0f 00 07 2f 02 15 
*mp22=03 00 0f 00 07 34 02 14 03 00 0f 00 07 35 02 15 
*mp23=03 00 0f 00 07 36 02 16 03 00 0f 00 07 37 02 17 
*mp24=03 00 0f 00 20 00 02 10 03 00 0f 00 20 01 02 11 
*mp25=03 00 0f 00 20 02 02 12 03 00 0f 00 20 03 02 13 
*mp26=03 00 00 00 ff 01 02 01 03 00 00 00 ff 03 02 03 
*mp27=03 00 00 00 ff 04 02 04 03 00 00 00 ff 06 02 06 
*mp28=03 00 00 00 ff 07 02 07 03 00 00 00 ff 08 02 08 
*mp29=03 00 00 00 ff 09 02 09 03 00 00 00 ff 0c 02 0c 
*mp30=03 00 00 00 ff 0d 02 0d 03 00 00 00 ff 0e 02 0e 
*mp31=03 00 00 00 ff 0f 02 0f 04 01 00 00 ff 00 ff 01 
*mp32=01 3f 50 43 49 20 20 20 03 00 0f 00 3f 00 02 11
```