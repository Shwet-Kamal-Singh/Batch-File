@echo off
:: This script creates a RAID 5 array using DiskPart.

:: Launch DiskPart and create the partition.
echo Launching DiskPart...
DiskPart <<EOF
select disk 1
clean
convert gpt
create partition primary size=10000
format quick fs=ntfs label="RAID5"
assign letter=R
EOF

:: Create the RAID 5 array.
echo Creating RAID 5 array...
DiskPart <<EOF
select disk 1
convert dynamic
create volume RAID-5 size=30000 disk=1,2,3
assign letter=R
EOF

:: Verify the RAID 5 array.
echo Verifying RAID 5 array...
DiskPart <<EOF
list volume
EOF

echo RAID 5 array successfully created.
