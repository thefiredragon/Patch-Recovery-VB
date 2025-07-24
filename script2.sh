#!/bin/bash

mkdir unpack
cd unpack
../magiskboot unpack ../vendor_boot.img
../magiskboot cpio vendor_ramdisk_recovery.cpio extract
# Reverse fastbootd ENG mode check
../magiskboot hexpatch system/bin/recovery e10313aaf40300aa6ecc009420010034 e10313aaf40300aa6ecc0094 # 20 01 00 35
../magiskboot hexpatch system/bin/recovery eec3009420010034 eec3009420010035
../magiskboot hexpatch system/bin/recovery 3ad3009420010034 3ad3009420010035
../magiskboot hexpatch system/bin/recovery 50c0009420010034 50c0009420010035
../magiskboot hexpatch system/bin/recovery 080109aae80000b4 080109aae80000b5
../magiskboot hexpatch system/bin/recovery 20f0a6ef38b1681c 20f0a6ef38b9681c
../magiskboot hexpatch system/bin/recovery 23f03aed38b1681c 23f03aed38b9681c
../magiskboot hexpatch system/bin/recovery 20f09eef38b1681c 20f09eef38b9681c
../magiskboot hexpatch system/bin/recovery 26f0ceec30b1681c 26f0ceec30b9681c
../magiskboot hexpatch system/bin/recovery 24f0fcee30b1681c 24f0fcee30b9681c
../magiskboot hexpatch system/bin/recovery 27f02eeb30b1681c 27f02eeb30b9681c
../magiskboot hexpatch system/bin/recovery b4f082ee28b1701c b4f082ee28b970c1
../magiskboot hexpatch system/bin/recovery 9ef0f4ec28b1701c 9ef0f4ec28b9701c
../magiskboot hexpatch system/bin/recovery 9ef00ced28b1701c 9ef00ced28b9701c
../magiskboot hexpatch system/bin/recovery 2001597ae0000054 2001597ae1000054  # ccmp w9, w25, #0, eq ; b.e #0x20 ===> b.ne #0x20
../magiskboot hexpatch system/bin/recovery 2001597ac0000054 2001597ac1000054
../magiskboot cpio vendor_ramdisk_recovery.cpio 'add 0755 system/bin/recovery system/bin/recovery'
../magiskboot repack ../vendor_boot.img new-boot.img
cp new-boot.img ../vendor_boot-patched.img
