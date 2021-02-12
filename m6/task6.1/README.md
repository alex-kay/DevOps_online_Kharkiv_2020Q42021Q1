
# Networking with Linux

1. Create virtual machines connection according to figure 1:

```
Internet
|
Host
|
VM1 – VM2
```

2. VM2 has one interface (internal), VM1 has 2 interfaces (NAT and internal). Configure all network interfaces in order to make VM2 has an access to the Internet (iptables, forward, masquerade).

Added a DHCP server in Virtualbox *internal* network:

```
VBoxManage dhcpserver add --netname internal --ip 10.0.0.1 --netmask 255.255.255.0 --lowerip 10.0.0.100 --upperip 10.0.0.200 --enable
```

Created two VMs with Ubuntu 16.04 with following interfaces:
![Screenshot 2.1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m6/task6.1/Screenshots/Screenshot%202021-02-06%20at%2004.38.54.jpg)

Enabled ipv4 forwarding on VM1 and added iptables rules:

```
echo 1 > /proc/sys/net/ipv4/ip_forwarding
iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE
iptables -A FORWARD -i enp0s8 -o enp0s3 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i enp0s8 -o enp0s3 -j ACCEPT
```

Added default gateway on VM2 (address of VM1):

```
route add default gw 10.0.0.101
```

Iptables config can be saved using `iptables-save` command on VM1.

Also, added `dns-nameservers 8.8.8.8 8.8.4.4` line on VM2 *interfaces* file.

3. Check the route from VM2 to Host.

After VM2 has established connection to the Internet via VM1 NAT, could install *traceroute* and check route to host IP (192.168.1.28 on local wifi network):
![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m6/task6.1/Screenshots/Screenshot%202021-02-06%20at%2005.27.41.jpg)

4. Check the access to the Internet, (just ping, for example, 8.8.8.8).

![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m6/task6.1/Screenshots/Screenshot%202021-02-06%20at%2005.30.22.jpg)

5. Determine, which resource has an IP address 8.8.8.8.

![Screenshot 5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m6/task6.1/Screenshots/Screenshot%202021-02-06%20at%2005.34.31.jpg)

6. Determine, which IP address belongs to resource epam.com.

![Screenshot 6](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m6/task6.1/Screenshots/Screenshot%202021-02-06%20at%2005.35.32.jpg)

7. Determine the default gateway for your HOST and display routing table.

![Screenshot 7](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m6/task6.1/Screenshots/Screenshot%202021-02-12%20at%2022.32.27.jpg)

8. Trace the route to google.com.

![Screenshot 8](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m6/task6.1/Screenshots/Screenshot%202021-02-06%20at%2005.39.21.jpg)