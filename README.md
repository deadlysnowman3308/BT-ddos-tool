# BT-ddos-tool
    
    BT-DDoS tool attack, which overflows Bluetooth Enabled devices with random packets which cause the device to crash.


## What is BlueSmack Attack?

- In the L2CAP protocol, there is a possibility of requesting and receiving echo from other Bluetooth enabled peers. This is done through L2CAP ping. This L2CAP ping helps in checking connectivity and the roundtrip time of established connections with other Bluetooth enabled devices.

- Every device has a limit on the size of the L2CAP ping. If it gets an L2CAP ping packet, which is beyond the limit of the size, it will crash. And, in BlueSmack Attack, the attacker exploits that.

 
