$(call inherit-product, device/motorola/peregrine/full_peregrine.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_RELEASE_NAME := peregrine
PRODUCT_NAME := lineage_peregrine

PRODUCT_GMS_CLIENTID_BASE := android-motorola
