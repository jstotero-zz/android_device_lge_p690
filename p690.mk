$(call inherit-product, build/target/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p690/overlay

PRODUCT_COPY_FILES += \
    device/lge/p690/kernel:kernel

DISABLE_DEXPREOPT += false

PRODUCT_PACKAGES += \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    gps.p690 \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    bash

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

#keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gelato_keypad.kl:system/usr/keylayout/gelato_keypad.kl \
    $(LOCAL_PATH)/prebuilt/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/gelato_keypad.kcm.bin:system/usr/keychars/gelato_keypad.kcm.bin

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh \
    $(LOCAL_PATH)/init.gelato.rc:root/init.gelato.rc \
    $(LOCAL_PATH)/ueventd.gelato.rc:root/ueventd.gelato.rc \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/init.local.rc:/system/etc/init.local.rc

## 2D (using proprietary)
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/lge/p690/proprietary/lib/hw/gralloc.p690.so:system/lib/hw/gralloc.msm7k.so \
    vendor/lge/p690/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    vendor/lge/p690/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    vendor/lge/p690/proprietary/lib/hw/copybit.p690.so:system/lib/hw/copybit.msm7k.so 
    vendor/lge/p690/proprietary/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so 

## Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/bin/ami304d:system/bin/ami304d \
    vendor/lge/p690/proprietary/lib/hw/sensors.msm7k.so:system/lib/hw/sensors.msm7k.so

## EGL
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/p690/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/p690/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/p690/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/p690/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/p690/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/p690/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

## Camera
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/lge/p690/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/lge/p690/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/p690/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/lge/p690/proprietary/lib/libmmipl.so:system/lib/libmmipl.so

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    $(LOCAL_PATH)/prebuilt/libra.ko:system/lib/modules/libra.ko \
    $(LOCAL_PATH)/prebuilt/librasdioif.ko:system/lib/modules/librasdioif.ko \
    vendor/lge/p690/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/p690/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/p690/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
    vendor/lge/p690/proprietary/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
    vendor/lge/p690/proprietary/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \

##RIL
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
    vendor/lge/p690/proprietary/lib/libril.so:obj/lib/libril.so \
    vendor/lge/p690/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lge/p690/proprietary/etc/flex/flex.xml:system/etc/flex/flex.xml

## Audio
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    $(LOCAL_PATH)/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/configs/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt 



# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/bin/qmuxd:system/bin/qmuxd
    
# atd
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/bin/atd:system/bin/atd

# port-bridge 
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/bin/port-bridge:system/bin/port-bridge

# netmgr (What is this?)
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/lge/p690/proprietary/lib/libdsutils.so:system/lib/so.libdsutils \
    vendor/lge/p690/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so


## OMX
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/p690/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/p690/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/p690/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/p690/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/p690/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/p690/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/p690/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/p690/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/p690/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \
    vendor/lge/p690/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/p690/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/p690/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/p690/proprietary/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \
    vendor/lge/p690/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    vendor/lge/p690/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/p690/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \
    vendor/lge/p690/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/p690/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/p690/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    vendor/lge/p690/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/p690/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so

## BT
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/bin/BCM4330B1_002.001.003.0337.0338.hcd:system/bin/BCM4330B1_002.001.003.0337.0338.hcd

# CND
PRODUCT_COPY_FILES += \
    vendor/lge/p690/proprietary/bin/cnd:system/bin/cnd \


# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# chargermode
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_bg_bk.rle:root/chargerimages/battery_bg_bk.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    $(LOCAL_PATH)/chargemode/chargerlogo:root/sbin/chargerlogo

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \


# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_LOCALES += mdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p690
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := gelato
PRODUCT_MODEL := LG-P690
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=p690
