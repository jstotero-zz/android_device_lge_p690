# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration for p690.
$(call inherit-product, device/lge/p690/p690.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_p690
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p690
PRODUCT_MODEL := LG-P690
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_gelato BUILD_ID=GRJ22 BUILD_FINGERPRINT=lge/lge_gelato/gelato_open-eu:2.3.4/GRJ22/lgp690-V10b.19d3f3d48a:user/release-keys PRIVATE_BUILD_DESC="lge_gelato-user 2.3.4 GINGERBREAD V10b.19d3f3d48a release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusNet.by.JST
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
