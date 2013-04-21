#Exercises for BSides London 2013 Workshop


## Before BSides London

### Introduction

[Security Onion] (https://code.google.com/p/security-onion/w/list) is a Linux distro for IDS (Intrusion Detection) & NSM (Network Security Monitoring).

Unfortunately the workshops are only one hour long and the purpose of this workshop is to to demonstrate how easy the Security Onion distro makes Network Security Monitoring (NSM). As many folk in the security industry know, traditional Intrusion Detection Systems (IDS) can be costly, difficult to install, may not provide all the capabilities that you need to defend your network and frequently end up as a doorstop in your datacentre. In the early noughties, the craze was to install IDS hardware because the Big-4 auditor had said so whilst then in the late noughties, research analysts were saying there was no need for dedicated IDS solutions because devices were collapsing and everything was going to be on your firewall, oh yeah that silver bullet :)

NSM provides you, the defender, with greatly enhanced visibility and understanding before:

- it combines traditional IDS alerts with additional data to give you a more complete picture of what's really happening on your network.

- _it is so broad that it encompasses both traditional IDS/IPS and other network information gathering techniques, all focused on providing an intrusion analyst with the best possible information in the shortest amount of time_ (Source : http://nsmwiki.org/Main_Page).

            “the collection, analysis, and escalation of indications and warnings (I&W) to detect and respond to intrusions”

Richard Bejtlich - http://taosecurity.blogspot.com/2007/04/networksecurity-monitoring-history.html

### Install Security Onion to latest version onto a VM on your laptop and bring to BSides :) 

The `README.MD` file at the top of this repo has more detailed instructions.

## At BSides London

Review any issues that any of the attendees have.

### Define Some Key Terms

Run through some common terms that folk drop all the time when talking about NSM.

### Walk through some of the features

Due to the lack of time, this will probably be done very quickly.

- IDS Engine: Snort or Suricata

- Sguil & Squert

- Snorby

- Bro

- OSSEC

### Generate Alerts Using `tcpreplay`

In the `pcaps` directory of this repo, I've placed a bunched of packet captures that you can play with using `tcpreplay`.

The idea here is that we replay the packet captures as per the `tcpreplay` usage below.

#### `tcpreplay` usage

For example, use `tcpreplay` to replay bad.pcap onto your eth1 interface (you may need to use a different interface, just ensure it's being monitored by Sguil):

    sudo tcpreplay -i eth1 -t bad.pcap

#### `tcpreplay` script

This script will automatically replay all of those packet captures.

### DVWA

I'm not sure if we'll get time to get to this section but the purpose here

- Install on Security Onion Distro

- Open up port 80 on ufw on the Security Onion instance.

- Throw some SQLi attacks against it and examine Sguil/Squert/Snorby
