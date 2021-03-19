# BT-ddos-tool
    
    BT-DDoS tool attack, which overflows Bluetooth Enabled devices with random packets which cause the device to crash.


## What is BlueSmack(BT-ddos-tool) Attack?

- In the L2CAP protocol, there is a possibility of requesting and receiving echo from other Bluetooth enabled peers. This is done through L2CAP ping. This L2CAP ping helps in checking connectivity and the roundtrip time of established connections with other Bluetooth enabled devices.

- Every device has a limit on the size of the L2CAP ping. If it gets an L2CAP ping packet, which is beyond the limit of the size, it will crash. And, in BlueSmack Attack, the attacker exploits that.

 
# :: Requirement ::

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
$ sudo chmod +x *

$ sudo ./install.sh

```

# :: DDos bluetooth devices ::

```
$ sudo ./BT-ddos-tool.sh
```
