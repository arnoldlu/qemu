#!/bin/bash
#Multithread to download CentOS ISO files(Everything/DVD/Minimal)
# axel -n 20 http://ftp.stu.edu.tw/Linux/CentOS/7/isos/x86_64/CentOS-7-x86_64-Everything-1611.iso
# axel -n 20 http://ftp.stu.edu.tw/Linux/CentOS/7/isos/x86_64/CentOS-7-x86_64-DVD-1611.iso
# axel -n 20 http://ftp.stu.edu.tw/Linux/CentOS/7/isos/x86_64/CentOS-7-x86_64-Minimal-1611.iso

#Create a QEMU image
# qemu-img create -o preallocation=metadata -f qcow2 images/centos.qcow2 60G

#Boot a QEMU machine with CD-ROM to install CentOS
# qemu-system-x86_64 -smp 2 -m 2048 -enable-kvm images/centos.qcow2 -cdrom images/CentOS-7-x86_64-DVD-1611.iso -vnc :1

#Boot a QEMU machine from image
# qemu-system-x86_64 -smp 2 -m 2048 -enable-kvm images/centos.qcow2 -vnc :1

#Access a QEMU machine desktop by gvncviewer
# gvncviewer 127.0.0.1:1

#Configure make file
# ./configure –target-list=x86_64-softmmu

#Make and install qemu
# sudo make -j8 install
