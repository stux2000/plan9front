![http://farm3.static.flickr.com/2648/5823806540_acbe2d3f19_z.jpg](http://farm3.static.flickr.com/2648/5823806540_acbe2d3f19_z.jpg)

# 9front Frequently Questioned Answers #

_Those who can do, those who can't write and those who can't write make ezines._ -- Sape Mullender

This document's structure (and much of its text) is plagiarized from the [OpenBSD FAQ](http://www.openbsd.org/faq/). Nevertheless, we've made some changes, and we hope you'll investigate the information contained within.

![http://9front.org/img/goaway.jpg](http://9front.org/img/goaway.jpg)

## 0 - Introduction to Plan 9 ##
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

[0.2.4 - What is the deal with Plan 9's weird license?](fqa0#0.2.4_-_What_is_the_deal_with_Plan_9's_weird_license?.md)

[0.2.4.1 - Richard Stallman hates the Plan Nine license (circa 2000)](fqa0#0.2.4.1_-_Richard_Stallman_hates_the_Plan_Nine_license_(circa_2000).md)

[0.2.4.2 - Theo de Raadt hates the Plan 9 license (circa 2003)](fqa0#0.2.4.2_-_Theo_de_Raadt_hates_the_Plan_9_license_(circa_2003).md)

[0.2.4.3 - Everyone hates the Plan 9 license (circa 2014)](fqa0#0.2.4.3_-_Everyone_hates_the_Plan_9_license_(circa_2014).md)

[0.3 - Further Reading](fqa0#0.3_-_Further_Reading.md)

[0.3.1 - Plan 9 papers](fqa0#0.3.1_-_Plan_9_papers.md)

[0.3.2 - Man pages](fqa0#0.3.2_-_Man_pages.md)

[0.3.3 - Web pages](fqa0#0.3.3_-_Web_pages.md)

[0.3.4 - Books](fqa0#0.3.4_-_Books.md)

## 1 - Introduction to 9front ##
[1.1 - What is 9front?](fqa1#1.1_-_What_is_9front?.md)

[1.2 - On what systems does 9front run?](fqa1#1.2_-_On_what_systems_does_9front_run?.md)

[1.3 - Why might I want to use 9front?](fqa1#1.3_-_Why_might_I_want_to_use_9front?.md)

[1.4 - Is 9front really free?](fqa1#1.4_-_Is_9front_really_free?.md)

[1.5 - How can I help support 9front?](fqa1#1.5_-_How_can_I_help_support_9front?.md)

[1.6 - Who maintains 9front?](fqa1#1.6_-_Who_maintains_9front?.md)

[1.7 - When is the next release of 9front?](fqa1#1.7_-_When_is_the_next_release_of_9front?.md)

[1.8 - What is included with 9front?](fqa1#1.8_-_What_is_included_with_9front?.md)

[1.9 - Can I use 9front as a desktop system?](fqa1#1.9_-_Can_I_use_9front_as_a_desktop_system?.md)

[1.10 - Why is/isn't ProductX included?](fqa1#1.10_-_Why_is/isn't_ProductX_included?.md)

## 2 - Getting to know 9front ##
[2.1 - Web Pages](fqa2#2.1_-_Web_Pages.md)

[2.2 - Mailing Lists](fqa2#2.2_-_Mailing_Lists.md)

[2.2.1 - Mailing List Archives](fqa2#2.2.1_-_Mailing_List_Archives.md)

[2.2.2 - Other useful mailing lists](fqa2#2.2.2_-_Other_useful_mailing_lists.md)

[2.3 - Manual Pages](fqa2#2.3_-_Manual_Pages.md)

[2.4 - Reporting Bugs](fqa2#2.4_-_Reporting_Bugs.md)

[2.4.1 - How do I get more useful info for developers?](fqa2#2.4.1_-_How_do_I_get_more_useful_info_for_developers?.md)

[2.4.1.1 - Take a photo of the panic screen](fqa2#2.4.1.1_-_Take_a_photo_of_the_panic_screen.md)

[2.4.1.2 - Make a stack trace of a crashed process](fqa2#2.4.1.2_-_Make_a_stack_trace_of_a_crashed_process.md)

## 3 - Hardware ##
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

## 4 - 9front Installation Guide ##
[4.1 - Pre-installation Checklist](fqa4#4.1_-_Pre-installation_Checklist.md)

[4.2 - Creating bootable 9front install media](fqa4#4.2_-_Creating_bootable_9front_install_media.md)

[4.2.1 - ISO image](fqa4#4.2.1_-_ISO_image.md)

[4.2.2 - USB drive](fqa4#4.2.2_-_USB_drive.md)

[4.2.2.1 - Creating on Plan 9](fqa4#4.2.2.1_-_Creating_on_Plan_9.md)

[4.2.2.2 - Creating on Linux](fqa4#4.2.2.2_-_Creating_on_Linux.md)

[4.2.2.3 - Bootargs](fqa4#4.2.2.3_-_Bootargs.md)

[4.3 - Performing a simple install](fqa4#4.3_-_Performing_a_simple_install.md)

[4.3.1 - boot](fqa4#4.3.1_-_boot.md)

[4.3.2 - bootargs](fqa4#4.3.2_-_bootargs.md)

[4.3.3 - user](fqa4#4.3.3_-_user.md)

[4.3.4 -  vgasize, monitor, mouseport](fqa4#4.3.4_-_vgasize,_monitor,_mouseport.md)

[4.3.4.1 - Changing screen resolution](fqa4#4.3.4.1_-_Changing_screen_resolution.md)

[4.3.5 -  inst/start](fqa4#4.3.5_-_inst/start.md)

[4.3.6 - configfs](fqa4#4.3.6_-_configfs.md)

[4.3.7 -  partdisk](fqa4#4.3.7_-_partdisk.md)

[4.3.8 - prepdisk](fqa4#4.3.8_-_prepdisk.md)

[4.3.9 - mountfs](fqa4#4.3.9_-_mountfs.md)

[4.3.10 - configdist](fqa4#4.3.10_-_configdist.md)

[4.3.11 - confignet](fqa4#4.3.11_-_confignet.md)

[4.3.11.1 - dhcp](fqa4#4.3.11.1_-_dhcp.md)

[4.3.11.2 - manual](fqa4#4.3.11.2_-_manual.md)

[4.3.12 - mountdist](fqa4#4.3.12_-_mountdist.md)

[4.3.13 - copydist](fqa4#4.3.13_-_copydist.md)

[4.3.14 - sysname](fqa4#4.3.14_-_sysname.md)

[4.3.15 - tzsetup](fqa4#4.3.15_-_tzsetup.md)

[4.3.16 - bootsetup](fqa4#4.3.16_-_bootsetup.md)

[4.3.17 - finish](fqa4#4.3.17_-_finish.md)

[4.4 - Encrypted Partitions](fqa4#4.4_-_Encrypted_Partitions.md)

## 5 - Building the System from Source ##
[5.1 - Why should I build my system from source?](fqa5#5.1_-_Why_should_I_build_my_system_from_source?.md)

[5.2 - Building 9front from source](fqa5#5.2_-_Building_9front_from_source.md)

[5.2.1 - Update sources](fqa5#5.2.1_-_Update_sources.md)

[5.2.1.1 - hgrc](fqa5#5.2.1.1_-_hgrc.md)

[5.2.2 - Building from source](fqa5#5.2.2_-_Building_from_source.md)

[5.2.2.1 - Cross compiling](fqa5#5.2.2.1_-_Cross_compiling.md)

[5.3 - Building an ISO](fqa5#5.3_-_Building_an_ISO.md)

[5.4 - Common Problems when Compiling and Building](fqa5#5.4_-_Common_Problems_when_Compiling_and_Building.md)

## 6 - Networking ##
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

## 7 - System Management ##
[7.1 - Plan 9 Services Overview](fqa7#7.1_-_Plan_9_Services_Overview.md)

[7.1.1 - What is the kernel?](fqa7#7.1.1_-_What_is_the_kernel?.md)

[7.1.2 - What is the fileserver?](fqa7#7.1.2_-_What_is_the_fileserver?.md)

[7.1.3 - What is the auth server?](fqa7#7.1.3_-_What_is_the_auth_server?.md)

[7.1.4 - What is the cpu server?](fqa7#7.1.4_-_What_is_the_cpu_server?.md)

[7.1.5 - What is a terminal?](fqa7#7.1.5_-_What_is_a_terminal?.md)

[7.2 - Kernel configuration and maintenance](fqa7#7.2_-_Kernel_configuration_and_maintenance.md)

[7.2.1 - How do I mount the 9fat partition?](fqa7#7.2.1_-_How_do_I_mount_the_9fat_partition?.md)

[7.2.2 - How do I modify plan9.ini?](fqa7#7.2.2_-_How_do_I_modify_plan9.ini?.md)

[7.2.3 - Kernel configuration file](fqa7#7.2.3_-_Kernel_configuration_file.md)

[7.2.4 - Kernel drivers](fqa7#7.2.4_-_Kernel_drivers.md)

[7.2.5 - How do I install a new kernel?](fqa7#7.2.5_-_How_do_I_install_a_new_kernel?.md)

[7.3 - Fileserver configuration and maintenance](fqa7#7.3_-_Fileserver_configuration_and_maintenance.md)

[7.3.1 - Adding users](fqa7#7.3.1_-_Adding_users.md)

[7.3.2 - Configuring nvram](fqa7#7.3.2_-_Configuring_nvram.md)

[7.3.3 - Setting up a listener for network connections](fqa7#7.3.3_-_Setting_up_a_listener_for_network_connections.md)

[7.4 - Auth server configuration and maintenance](fqa7#7.4_-_Auth_server_configuration_and_maintenance.md)

[7.4.1 - Configuring an auth server](fqa7#7.4.1_-_Configuring_an_auth_server.md)

[7.4.1.1 - Avoiding an ndb entry for the auth server](fqa7#7.4.1.1_-_Avoiding_an_ndb_entry_for_the_auth_server.md)

[7.4.2 - Adding users](fqa7#7.4.2_-_Adding_users.md)

[7.5 - Cpu server configuration and maintenance](fqa7#7.5_-_Cpu_server_configuration_and_maintenance.md)

[7.5.1 - Configuring a cpu server](fqa7#7.5.1_-_Configuring_a_cpu_server.md)

[7.6 - Terminal configuration and maintenance](fqa7#7.6_-_Terminal_configuration_and_maintenance.md)

[7.6.1 - Configuring a terminal](fqa7#7.6.1_-_Configuring_a_terminal.md)

[7.6.2 - Configuring a Terminal to Accept cpu Connections](fqa7#7.6.2_-_Configuring_a_Terminal_to_Accept_cpu_Connections.md)

[7.6.3 - UTC Timesync](fqa7#7.6.3_-_UTC_Timesync.md)

[7.7 - Mail server configuration and maintenance](fqa7#7.7_-_Mail_server_configuration_and_maintenance.md)

[7.7.1 - smtpd.conf](fqa7#7.7.1_-_smtpd.conf.md)

[7.7.2 - rewrite](fqa7#7.7.2_-_rewrite.md)

[7.7.3 - names.local](fqa7#7.7.3_-_names.local.md)

[7.7.4 - remotemail](fqa7#7.7.4_-_remotemail.md)

[7.7.5 - SMTP over TLS](fqa7#7.7.5_-_SMTP_over_TLS.md)

[7.7.6 - IMAP4 over TLS](fqa7#7.7.6_-_IMAP4_over_TLS.md)

[7.8 - Web server configuration and maintenance](fqa7#7.8_-_Web_server_configuration_and_maintenance.md)

[7.8.1 - ip/httpd](fqa7#7.8.1_-_ip/httpd.md)

[7.8.2 - rc-httpd](fqa7#7.8.2_-_rc-httpd.md)

[7.9 - TLS certificates](fqa7#7.9_-_TLS_certificates.md)

## 8 - Using 9front ##
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

## 9 - Troubleshooting ##
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

<img src='http://9front.org/img/toilet.jpg'>