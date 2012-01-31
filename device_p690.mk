$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/p690/p690-vendor.mk)

#DEVICE_PACKAGE_OVERLAYS += device/lge/p690/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/p690/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    gps.p690 \
    lights.p690 \
    copybit.p690 \
    bdaddr_read \
    gadget_id

PRODUCT_PACKAGES += \
    flash_image \
    dump_image \
    erase_image \
    e2fsck \
    SpareParts \
    CMWallpapers \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/keylayout/p690_keypad.kl:system/usr/keylayout/p690_keypad.kl \
    vendor/lge/p690/proprietary/keylayout/p690_keypad.kcm.bin:system/usr/keychars/p690_keypad.kcm.bin 

# Board-specific init (does not support charging in "power off" state yet)
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/init/init.p690.rc:root/init.p690.rc \
    #vendor/lge/p690/proprietary/init/init.rc:root/init.rc \
    $(LOCAL_PATH)/files/02p690:system/etc/init.d/ \
    vendor/lge/p690/proprietary/uevent/ueventd.p690.rc:root/ueventd.p690.rc 

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# configs
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/p690/proprietary/media_profiles.xml:system/etc/media_profiles.xml

# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/hw/sensors.p690.so:system/lib/hw/sensors.p690.so \
    vendor/lge/p690/proprietary/bin/ami304d:system/bin/ami304d \

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
#    vendor/lge/p690/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
#    vendor/lge/p690/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
#    vendor/lge/p690/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
#    vendor/lge/p690/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/p690/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/p690/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/p690/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/p690/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/p690/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \

# WiFi
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/files/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lge/p690/proprietary/modules/wireless.ko:system/lib/modules/wireless.ko
    vendor/lge/p690/proprietary/modules/libra.ko:system/lib/modules/libra.ko
    vendor/lge/p690/proprietary/modules/librasdioif.ko:system/lib/modules/librasdioif.ko
	vendor/lge/p690/proprietary/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/p690/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/p690/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/p690/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin

# SD Card
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/vold.fstab:system/etc/vold.fstab \

# TUN
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/modules/tun.ko:system/lib/modules/tun.ko    

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/lge/p690/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

## RIL
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/p690/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/p690/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/p690/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/p690/proprietary/lib/liblge_security.so:system/lib/liblge_security.so \
    vendor/lge/p690/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/p690/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/p690/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/p690/proprietary/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    vendor/lge/p690/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/p690/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/p690/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/p690/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/p690/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/p690/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/p690/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/p690/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/p690/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \
    vendor/lge/p690/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/p690/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/p690/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/p690/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/p690/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/p690/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/p690/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    vendor/lge/p690/proprietary/lib/libidl.so:system/lib/libidl.so \
    vendor/lge/p690/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \
    vendor/lge/p690/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lge/p690/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/lge/p690/proprietary/etc/flex/flex.xml:system/etc/flex/flex.xml \
    vendor/lge/p690/proprietary/bin/atd:system/bin/atd 

#OMX
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so
    vendor/lge/p690/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so
    vendor/lge/p690/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so
    vendor/lge/p690/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so
    vendor/lge/p690/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so
    vendor/lge/p690/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so
    vendor/lge/p690/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so
    vendor/lge/p690/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so
    vendor/lge/p690/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so
    vendor/lge/p690/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so
    vendor/lge/p690/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so
    vendor/lge/p690/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so
    vendor/lge/p690/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so
    vendor/lge/p690/proprietary/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so
    vendor/lge/p690/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so
    vendor/lge/p690/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so
    vendor/lge/p690/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so
    vendor/lge/p690/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so
    vendor/lge/p690/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so
    vendor/lge/p690/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so
    vendor/lge/p690/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so
    vendor/lge/p690/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so

# chargermode
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_bg_bk.rle:root/chargerimages/battery_bg_bk.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \
    vendor/lge/p690/proprietary/chargermode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    vendor/lge/p690/proprietary/chargermode/chargerlogo:root/sbin/chargerlogo

# Bootanimation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bootanimation.zip:system/media/bootanimation.zip
    
# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/system/bin/BCM4330.hcd:system/bin/BCM4330.hcd    

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p690
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := p690
PRODUCT_MODEL := LG-P690
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=p690
