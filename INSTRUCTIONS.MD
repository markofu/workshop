Packet Captures for BSides Workshop
-----------------------------------


Instructions for BSides London 2013
-----------------------------------

Short Intro
-----------

[Security Onion] (https://code.google.com/p/security-onion/w/list) is a Linux distro for IDS (Intrusion Detection) & NSM (Network Security Monitoring). 

Unfortunately the workshops are only one hour long and the purpose of this workshop is to to demonstrate how easy the Security Onion distro makes Network Security Monitoring (NSM). As many folk in the security industry know, traditional Intrusion Detection Systems (IDS) can be costly, difficult to install, may not provide all the capabilities that you need to defend your network and frequently end up as a doorstop in your datacentre. In the early noughties, the craze was to install IDS hardware because the Big-4 auditor had said so whilst then in the late noughties, research analysts were saying there was no need for dedicated IDS solutions because devices were collapsing and everything was going to be on your firewall, oh yeah that silver bullet :)

NSM provides you, the defender, with visibility like never before:

- it combines traditional IDS alerts with additional data to give you a more complete picture of what's really happening on your network.

- _it is so broad that it encompasses both traditional IDS/IPS and other network information gathering techniques, all focused on providing an intrusion analyst with the best possible information in the shortest amount of time_ (Source : http://nsmwiki.org/Main_Page).

*N.B.:*I believe that there will be no Internet access :( Therefore, you need to get a few things sorted before you turn up to play with Security Onion.

Requirements
------------

- Bring a laptop with VM software (VirtuaBox, XenClient, VMware or Parallels) on it.

- Install Security Onion as per [here] (https://code.google.com/p/security-onion/wiki/Installation).You will see there are two ways:

-- Default Security Onion ISO

-- On your preferred version of Ubuntu 12.04 (32-bit or 64-bit), install the various aptitude packages as per the insutrctions above. In case you're _lazy_, I have written a simple bash script that will install Security Onion on your Ubuntu VM. It can be found at https://github.com/markofu/scripts/tree/master/so/install.sh.
