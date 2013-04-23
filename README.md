# BSides London 2013 Workshop

The intention of this workshop is to introduce the ``Security Onion`` Linux distro to workshop attendees and show how it can be used to greatly facilitate incident and attack analysis, by enhancing the visiblity into your network.

## Who am I?

My name is Mark Hillick (@markofu), from Kybeire, and I've far too many years of experience in Info Sec. 

This workshop will hopefully introduce folks to the benefits of using Security Onion for NSM.

## What you have to do :)

### Before BSides

#### Requirements

I believe that there will be no Internet access :( Therefore, you need to get a few things sorted before you turn up to play with Security Onion.

- Bring a laptop with VM software (VirtuaBox, XenClient, VMware or Parallels etc) on it.

- Clone this repository onto your VM.
  * If `git` is not on you system, install it with

                           sudo apt-get -y install git
  * Then with `git`, run

                           git clone https://github.com/markofu/workshop.git

to clone this repository onto you system.

- Install `Security Onion` as per [here] (https://code.google.com/p/security-onion/wiki/Installation).You will see there are two ways:
  * Default `Security Onion` ISO
  * On your preferred version of Ubuntu 12.04 (32-bit or 64-bit), install the various aptitude packages as per the instructions above. In case you're _lazy_, I have written a simple bash script that will install Security Onion on your Ubuntu VM. It can be found at https://github.com/markofu/scripts/tree/master/so/install.sh.

### At BSides

- Have your laptop ready

- We only have an hour so try to be on time

- Ask questions but let's take anything detailed offline after the course.

- The workshop will be based on this presentation - http://is.gd/m5MLqB.

- The workshop will involve:
  * Short history of the history and goals of the `Security Onion` Project
  * Quick description of a sample infrastructure
  * Walkthrough of the tools
  * Practical usage of the tools, primarily due to replaying the packet captures in this github repository with tcpreplay
  * I'd like to use a [DVWA](https://code.google.com/p/dvwa/) installation on the same VM as `Security Onion` to show some alerts happening in real-time but I'm not sure if we'll have time. Regardless please install it as per the instructions in the `DVWA` directory in this github repo.

### After Bsides

- Spread the word about `Security Onion`

- Continue playing with `Security Onion`

- Give thanks to Doug Burks, Scott Runnels and the many other various folk who help with `Security Onion`!
