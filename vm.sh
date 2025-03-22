#!/bin/bash

set -e

qemu-system-x86_64 -hda minix3_disk.img -cdrom minix_R3.3.0-588a35b.iso -m 1024 -boot d

sleep 10

qemu-img create -f qcow2 minix3_disk.img 5G