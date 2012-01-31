#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR=lge
DEVICE=p690

rm -rf ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/modules
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/init
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/uevent
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/chargermode/chargerimages
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/flex
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw

## INIT FILES
adb pull /init ../../../vendor/$VENDOR/$DEVICE/proprietary/init/init
adb pull /init.rc ../../../vendor/$VENDOR/$DEVICE/proprietary/init/init.rc
adb pull /init.qcom.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/init/init.qcom.sh
adb pull /init.qcom.post_boot.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/init/init.qcom.post_boot.sh
adb pull /init.lge.hidden_reset.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/init/init.lge.hidden_reset.sh
adb pull /init.gelato.rc ../../../vendor/$VENDOR/$DEVICE/proprietary/init/init.p690.rc

## UEVENT FILES
adb pull /ueventd.rc ../../../vendor/$VENDOR/$DEVICE/proprietary/uevent/ueventd.rc
adb pull /ueventd.goldfish.rc ../../../vendor/$VENDOR/$DEVICE/proprietary/uevent/ueventd.goldfish.rc
adb pull /ueventd.gelato.rc ../../../vendor/$VENDOR/$DEVICE/proprietary/uevent/ueventd.p690.rc

## KEYLAYOUT
adb pull /system/usr/keylayout/gelato_keypad.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/keylayout/p690_keypad.kl
adb pull /system/usr/keychars/gelato_keypad.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/keylayout/p690_keypad.kcm.bin

## OTHER FILES
adb pull /default.prop ../../../vendor/$VENDOR/$DEVICE/proprietary/default.prop
adb pull /system/etc/AudioFilter.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilter.csv
adb pull /system/etc/media_profiles.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/media_profiles.xml
adb pull /system/etc/wl/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/nvram.txt
adb pull /sbin/chargerlogo ../../../vendor/$VENDOR/$DEVICE/proprietary/chargermode/chargerlogo

#MODULES
adb pull /system/lib/modules/ ../../../vendor/$VENDOR/$DEVICE/proprietary/modules/

## CHARGER IMAGES
adb pull /chargerimages/ ../../../vendor/$VENDOR/$DEVICE/proprietary/chargermode/chargerimages/

## RIL
adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgstk_exp.so
adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqmi.so
adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libpbmlib.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmgsdilib.so
adb pull /system/lib/liblge_security.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblge_security.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qcril-hook-oem.so
adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsm.so
adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboncrpc.so
adb pull /system/lib/libril-qc-qmi-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qc-qmi-1.so
adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnv.so
adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libauth.so
adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwms.so
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsl.so
adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdiag.so
adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboem_rapi.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsdi_exp.so
adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qc-1.so
adb pull /system/lib/liblgeat.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgeat.so
adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcm.so
adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqueue.so
adb pull /system/lib/liblgerft.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgerft.so
adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdss.so
adb pull /system/lib/libbcmwl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libbcmwl.so
adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwmsts.so
adb pull /system/lib/libdsutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsutils.so
adb pull /system/lib/libidl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libidl.so
adb pull /system/lib/liblgdrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgdrm.so
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril.so
adb pull /system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/qmuxd
adb pull /system/etc/flex/flex.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/flex/flex.xml
adb pull /system/bin/atd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/atd

## Audio
adb pull /system/lib/libaudioeq.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libaudioeq.so
adb pull /system/lib/liba2dp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liba2dp.so

## HAL
adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/copybit.msm7k.so
adb pull /system/lib/hw/lights.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/lights.msm7k.so
adb pull /system/lib/hw/sensors.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/sensors.p690.so

## EGL
adb pull /system/lib/egl/egl.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/egl.cfg
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv2_adreno200.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libq3dtools_adreno200.so
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libEGL_adreno200.so
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsl.so
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pfp.fw
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pm4.fw
adb pull /system/bin/ami304d ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/ami304d

## Camera
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/

## OMX
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxEvrcHwDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxOn2Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxQcelp13Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxQcelpHwDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/
adb pull /system/lib/libdivxdrmdecrypt.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/

## BT
adb pull /system/bin/BCM4330B1_002.001.003.0337.0338.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary/system/bin/BCM4330.hcd

## Wifi
adb pull /system/etc/wl/rtecdc-apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl/
adb pull /system/etc/wl/rtecdc-mfgtest.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl/
adb pull /system/etc/wl/rtecdc.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl/
adb pull /data/misc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/wpa_supplicant.conf
adb pull /system/etc/dhcpcd/dhcpcd.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/dhcpd.conf

## SDCARD
adb pull /system/etc/vold.fstab ../../../vendor/$VENDOR/$DEVICE/proprietary/vold.fstab
