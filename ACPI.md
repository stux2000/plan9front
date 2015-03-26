![http://i.intma.in/images/be34d9ccc139624cad1694a88a795984.gif](http://i.intma.in/images/be34d9ccc139624cad1694a88a795984.gif)

# Introduction #

Plan9front currently has partial ACPI support for PCI interrupt
routing and system shutdown.

# Enabling ACPI #

ACPI is enabled with the presence of `*acpi=` boot parameter.
This will create the `/dev/acpitbls` file that can be used to
read the systems acpi tables. Specifying `*acpi=0` will make
acpi tables accessible thru the file but not use it in the kernel.