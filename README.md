# Similar script
You can also refer this [script](https://github.com/engineer4t/fastboot-patcher)

# Patch-Recovery (Vendor Boot Header v4)
[Work in Progress...] This CI service patches vendor_boot's recovery ramdisk (header v4) of Samsung devices to enable Fastbootd. Based on Phh's [script](https://github.com/phhusson/samsung-galaxy-a51-gsi-boot)

# How to use:
- Fork this repo.
- Extract your vendor_boot.img.lz4 and upload vendor_boot.img (not lz4) to [transfer.sh](https://transfer.sh/) or any other file hosting sites. Once uploaded right click on the Download button and copy the URL. Avoid Gdrive links for now as it has been causing an error in some cases. 
- Head over to Actions tab. Click on VENDOR_BOOT -> Run workflow. Insert the copied URL in the RECOVERY URL field and Start the workflow
- The Patching process will start
- A `fastbootd-vendor_boot.tar` will be uploaded at the end of the process (in release section). This is already in repacked in .tar for flashing via Odin software.

# Credits
- [Phhusson](https://github.com/phhusson) Without his script nothing would be possible at the first place
- [James Nguyen](https://github.com/thongass000) Helping me in simplifying the scripts and tweaking it
