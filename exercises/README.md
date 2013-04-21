#Exercises for BSides Workshop.


## Before BSides London

### Install Security Onion to latest version onto a VM on your laptop and bring to BSides :) 

The `INSTRUCTIONS.MD` and `README.MD` files at the top of this repo have more detailed instructions.

## At BSides London

Review any issues that any of the attendees have had.

### Walk through some of the features

Due to the lack of time, this will be done very quickly.

- IDS Engine: Snort or Suricata

- Sguil & Squert

- Snorby

- Bro

### Generate Alerts Using tcpreplay

In the `pcaps` directory of this repo, I've placed a bunched of packet captures that you can play with using `tcpreplay`.

####tcpreplay usage

For example, use tcpreplay to replay bad.pcap onto your eth1 interface (you may need to use a different interface, just ensure it's being monitored by Sguil):

    sudo tcpreplay -i eth1 -t bad.pcap

####tcpreplay script

This script will automatically replay all of those packet captures.

### DVWA

I'm not sure if we'll get time to get to this section but the purpose here

- Install on Security Onion Distro

- Open up port 80 on ufw on the Security Onion instance.

- Throw some SQLi attacks against it and examine Sguil/Squert/Snorby
