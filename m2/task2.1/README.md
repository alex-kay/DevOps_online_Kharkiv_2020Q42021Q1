# Module 2 Virtualization and Cloud Basic

## PART 1. HYPERVISORS

The most popular hypervisors are VMware ESXi, Microsoft Hyper-V, KVM and WMware Workstation, Oracle VirtualBox (type 2).
VMware ESXi is a type 1 hypervisor with the most functions of type 1 hv-s, but paid license.
Hyper-V is a type 1 hypervisor bundled with MS Windows OS, has free Hyper-V Server 2016.
KVM is a type 1 hypervisor for Linux, a lig()ht, free and open-source solution.
VirtualBox is a type 2 hypervisor, free and has more command line tools.
WMware Workstation is a type 2 hypervisor, paid, has advanced graphics support on host OS.

## PART 2. WORK WITH VIRTUALBOX

### 1. First run VirtualBox and Virtual Machine (VM)

* Installing Ubuntu Server on VM1:
![Screenshot 1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-12%20at%2019.20.25.jpg)
* Cloning VM2 from VM1:
![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-12%20at%2019.49.54.jpg)
* Upgrading software on WM1 and making snapshots:
![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-12%20at%2020.14.58.jpg)
* Importing .ova file, made from VM1, to VirtualBox:
![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-12%20at%2020.52.31.jpg)

### 2. Configuration of virtual machines

* Configured my USB flash drive to be connected to VM1 as USB flash drive
![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-17%20at%2014.35.38.jpg)
* Added my webcam as a webcam device to VM1 (could not display it in Cheese app, but managed to find a [python script](https://automaticaddison.com/real-time-object-tracking-using-opencv-and-a-webcam/) which displays webcam in a small window)
![Screenshot 5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-17%20at%2023.31.51.jpg)
* Mounted a shared folder to VM1 -- this tasks folder and created a test file there from VM1
![Screenshot 6](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-18%20at%2001.39.57.jpg)
* Configured a host-only interface between VM1 and VM2 - checked connection
![Screenshot 7](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-18%20at%2003.46.09.jpg)
* Configured a NAT network connecting VM1 and VM2
![Screenshot 8](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-18%20at%2016.13.08.jpg)

### PART 3. WORK WITH VAGRANT

* Ran a first Vagrant VM and connected to it via SSH
![Screenshot 1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-18%20at%2016.31.04.jpg)
* Provisioned two VMs, web client and web server, connected via private network. [Vagrantfile link](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/451225cae9202a711c90c4f3d0e1af6ddaecb76d/m2/task2.1/vagrant_test/Vagrantfile) here.
![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-18%20at%2018.35.31.jpg)
* Made vagrant boxes out of these VMs
![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.1/Screenshots/Screenshot%202020-12-18%20at%2019.05.43.jpg)
