#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product-if-exists, vendor/motorola/peregrine/peregrine-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/vendor/etc/mixer_paths.xml

# CMActions
#PRODUCT_PACKAGES += \
#    CMActions

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# Sensors
PRODUCT_PACKAGES += \
    akmd8963

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Inherit from msm8226-common
$(call inherit-product, device/motorola/msm8226-common/msm8226.mk)
