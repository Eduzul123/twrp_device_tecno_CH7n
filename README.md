# twrp device tree for Tecno Camon 18 P ( CH7n )

Tecno Camon 18 P ( _CH7n_ ) is a mid-range smartphone from Tecno

Released on 2021, October 04

# Device SPecifications
Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core (2x2.05 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)
Chipset | MediaTek Helio G96 (MT6781)
GPU     | Mali-G57 MC2
Memory  | 8 GB RAM
Shipped Android Version | 11 (HIOS 8.0) ~ upgradable to 12, hios 8.6 ~
Storage | 128 GB
Battery | 5000 mAh, non-removable
Display | 1080 x 2460 pixels,6.8 inches, 60/90/120hz

# picture
![camon18p](https://d3fyizz0b46qgr.cloudfront.net/global/phones/camon18/18p_hui_800_800.png)

# Checks
Blocking checks
- [✔] Correct screen/recovery size
- [✔] Working Touch, screen
- [✔] Backup to internal/microSD
- [✔] Restore from internal/microSD
- [✔] reboot to system
- [✔] ADB

Medium checks
- [✔] update.zip sideload
- [✔] UI colors (red/blue inversions)
- [✔] Screen goes off and on
- [✔] F2FS/EXT4 Support, exFAT/NTFS where supported
- [✔] all important partitions listed in mount/backup lists
- [✔] backup/restore to/from external (USB-OTG) storage
- [?] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [✔] decrypt /data
- [✔] Correct date

Minor checks
- [✔] MTP export
- [✔] reboot to bootloader
- [✔] reboot to recovery
- [✔] poweroff
- [✔] battery level
- [✔] temperature
- [?] encrypted backups
- [✔] encrypted backups
- [✔] input devices via USB (USB-OTG) - keyboard and mouse
- [✔] USB mass storage export
- [✔] set brightness
- [✔] vibrate
- [✔] screenshot
- [✔] partition SD card
- [✔] Fastbootd

# Clone
    git clone https://github.com/Eduzul123/twrp_device_tecno_CH7n.git -b android-12.1 device/tecno/CH7n

# Build
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_CH7n-eng; mka bootimage