FDEVICE="CH7n"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export OF_DEVICE_ALT="TECNO CH7n"
	export LC_ALL="C"
	export FOX_VIRTUAL_AB_DEVICE=1
	export FOX_EXTREME_SIZE_REDUCTION=1
	export OF_ADVANCED_SECURITY=1
	export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
	export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
	export OF_FBE_METADATA_MOUNT_IGNORE=1
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	export ALLOW_MISSING_DEPENDENCIES=true
	export OF_QUICK_BACKUP_LIST="/data;"
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_REMOVE_BASH=1
	export FOX_REMOVE_AAPT=1
	export FOX_DELETE_MAGISK_ADDON=1
	export FOX_DELETE_INITD_ADDON=1
	export FOX_EXCLUDE_NANO_EDITOR=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	export OF_CLOCK_POS=1
	export FOX_DELETE_AROMAFM=1
	export OF_USE_GREEN_LED=0
    export FOX_USE_XZ_UTILS=0
    export OF_HIDE_NOTCH=1
	
	# Navbar
	export OF_ALLOW_DISABLE_NAVBAR=0
	
	# OTA
    export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	
	# screen settings
	export OF_SCREEN_H=2460
	export OF_STATUS_H=100
	export OF_CLOCK_POS=2
	export OF_STATUS_INDENT_LEFT=48
	export OF_STATUS_INDENT_RIGHT=48

	# Bootimage Partition path
	export FOX_RECOVERY_BOOT_PARTITION="/dev/block/by-name/boot"
	export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
	export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	
	# flashlight
	export OF_FLASHLIGHT_ENABLE=1
	export OF_FL_PATH1="/tmp/flashlight"
  
	# R11
	export FOX_VARIANT=Stable
	export OF_MAINTAINER="Eduzul123"
	export OF_USE_TWRP_SAR_DETECT=1

	# run a process after formatting data to work-around MTP issues
	export OF_RUN_POST_FORMAT_PROCESS=1

	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi

fi
#
