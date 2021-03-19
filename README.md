# BT-ddos-tool
    
### BT-DDoS tool attack, which overflows Bluetooth Enabled devices with random packets which cause the device to crash.

<p align="center">
  <img src="https://raw.githubusercontent.com/deadlysnowman3308/BT-ddos-tool/Hackingvila/168283-200.png" alt="Sublime's custom image"/>
</p>


## What is BlueSmack(BT-ddos-tool) Attack?

- In the L2CAP protocol, there is a possibility of requesting and receiving echo from other Bluetooth enabled peers. This is done through L2CAP ping. This L2CAP ping helps in checking connectivity and the roundtrip time of established connections with other Bluetooth enabled devices.

- Every device has a limit on the size of the L2CAP ping. If it gets an L2CAP ping packet, which is beyond the limit of the size, it will crash. And, in BlueSmack Attack, the attacker exploits that.

 
# :: Requirements ::

```
----- Ubuntu / Debian -----
$ sudo apt-get -y install bluetooth bluez bluez-tools rfkill

----- Fedora -----
$ sudo dnf -y install bluez bluez-tools

----- Arch Linux / Manjaro -----
$ sudo pacman -S bluez bluez-utils
```

# :: Installation ::

```
$ git clone https://github.com/deadlysnowman3308/BT-ddos-tool.git

$ cd BT-ddos-tool

$ sudo chmod +x *

$ sudo ./install.sh

```

# :: Usage ::

```
$ sudo ./BT-ddos-tool.sh.x
```
