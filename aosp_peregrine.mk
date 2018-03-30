$(call inherit-product, device/motorola/peregrine/full_peregrine.mk)

# Inherit some common Aosp stuff.
$(call inherit-product, vendor/aosp/common.mk)

TARGET_BOOT_ANIMATION_RES := 720
EXTENDED_BUILD_TYPE := OFFICIAL

PRODUCT_RELEASE_NAME := peregrine
PRODUCT_NAME := aosp_peregrine

PRODUCT_GMS_CLIENTID_BASE := android-motorola
