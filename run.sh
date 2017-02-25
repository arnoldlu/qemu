#!/bin/bash
# qemu-img create -o preallocation=metadata -f qcow2 images/centos.qcow2 60G
# qemu-system-x86_64 -smp 2 -m 2048 -enable-kvm images/centos.qcow2 -cdrom images/CentOS-7-x86_64-DVD-1611.iso -vnc :1
# qemu-system-x86_64 -smp 2 -m 2048 -enable-kvm images/centos.qcow2 -vnc :1
# gvncviewer 127.0.0.1:1
# ./configure –target-list=x86_64-softmmu
# sudo make -j8 install
