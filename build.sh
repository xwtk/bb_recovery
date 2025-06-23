make
mkdir output
cat kernel.img dtb_combined.img > kernel_with_dtb_combined.img
./mkbootimg --kernel kernel_with_dtb_combined.img --ramdisk ramdisk.gz --base 0x00000000 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --pagesize 2048 -o output/recovery.img