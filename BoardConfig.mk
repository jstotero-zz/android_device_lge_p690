USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/p690/BoardConfigVendor.mk

#GENERAL
TARGET_NO_BOOTLOADER := true
#TARGET_NO_RADIOIMAGE := true
#TARGET_PROVIDES_INIT_TARGET_RC := true

#CPU and GPU
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := p690

#Kernel
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=gelato
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/lge/p690/kernel

#PARTITIONS

# adb shell cat /proc/mtd
# 
# dev:    size   erasesize  name
# mtd0: 00440000 00020000 "boot"
# mtd1: 0e600000 00020000 "system"
# mtd2: 00500000 00020000 "recovery"
# mtd3: 002c0000 00020000 "lgdrm"
# mtd4: 00100000 00020000 "splash"
# mtd5: 00100000 00020000 "FOTABIN"
# mtd6: 00640000 00020000 "FOTA"
# mtd7: 00040000 00020000 "misc"
# mtd8: 04000000 00020000 "cache"
# mtd9: 09f80000 00020000 "userdata"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0e600000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09f80000
BOARD_FLASH_BLOCK_SIZE := 131072


BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

#QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS 
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := p690
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
TARGET_SPECIFIC_HEADER_PATH := device/lge/p690/include
#TARGET_HARDWARE_3D := false
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_EGL_CFG := device/lge/p690/configs/egl.cfg

# WiFI
BOARD_WLAN_DEVICE := bcm4330
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION := VER_0_5_X
#this version does not look for connections
#WPA_SUPPLICANT_VERSION          := VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN       := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

# Browser
JS_ENGINE := v8

# USB mass storage
#BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/p690/netd/UsbController.cpp

# Sensors
#TARGET_USES_OLD_LIBSENSORS_HAL := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
#BUILD_WITH_FULL_STAGEFRIGHT := true

#camera
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true

## This is failing hard on 4330. hcitool hangs
#BOARD_FM_DEVICE := bcm4329
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#OPTIONS
#WITH_DEXPREOPT := false
#WITH_JIT := true
#ENABLE_JSC_JIT := true

TARGET_SF_NEEDS_REAL_DIMENSIONS := true

BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'
