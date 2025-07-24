#!/bin/bash

if [ -f vendor_boot.img.lz4 ];then
	lz4 -B6 --content-size -f vendor_boot.img.lz4 vendor_boot.img
fi