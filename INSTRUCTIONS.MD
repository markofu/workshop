# Instructions for BSides London 2013

This document contains some instructions regarding what you need to do or have sorted for the Seucirty Onion workshop as BSides London 2013.

## Requirements

I believe that there will be no Internet access :( Therefore, you need to get a few things sorted before you turn up to play with Security Onion.

- Bring a laptop with VM software (VirtuaBox, XenClient, VMware or Parallels) on it.

- Clone this repository onto your VM.

-- If `git` is not on you system, install with

              `sudo apt-get -y install git`

-- Then with `git`, run

              `git clone https://github.com/markofu/workshop.git`

to clone this repository onto you system.

- Install Security Onion as per [here] (https://code.google.com/p/security-onion/wiki/Installation).You will see there are two ways:

-- Default Security Onion ISO

-- On your preferred version of Ubuntu 12.04 (32-bit or 64-bit), install the various aptitude packages as per the insutrctions above. In case you're _lazy_, I have written a simple bash script that will install Security Onion on your Ubuntu VM. It can be found at https://github.com/markofu/scripts/tree/master/so/install.sh.
