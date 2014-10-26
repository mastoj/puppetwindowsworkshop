puppetwindowsworkshop
=====================

Exercises and presentation for a puppet windows workshop.

If you do this on Windows you must first disable hyper-v. To turn off hyper-v execute: 

    bcedit /set hypervisorlaunchtype off

and reboot. To turn it back on use

    bcedit /set hypervisorlaunchtype on (or auto start)

and reboot. Source: http://blogs.technet.com/b/gmarchetti/archive/2008/12/07/turning-hyper-v-on-and-off.aspx

The reason for this is that you can't have two hypervisor running at the same time, and if hyper-v is running you won't be able to run Virtualbox.

If you want to have a more advanced setup check Hanselmans post about the topic here: http://www.hanselman.com/blog/SwitchEasilyBetweenVirtualBoxAndHyperVWithABCDEditBootEntryInWindows81.aspx.
