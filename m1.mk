#
# Copyright (C) 2015 The CyanogenMod Project
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
#
$(call inherit-product-if-exists, vendor/lge/m1-common/m1-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/android/lge/m1-common/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=240

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=none \
    persist.audio.fluence.voicerec=none \
    persist.audio.fluence.speaker=none \
    ro.qc.sdk.audio.fluencetype=none

# Audio configuration
PRODUCT_COPY_FILES += \
    device/android/lge/m1-common/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# GPS
PRODUCT_COPY_FILES += \
    device/android/lge/m1-common/configs/gps.conf:system/etc/gps.conf

# Lights
PRODUCT_PACKAGES += \
    lights.msm8909

# Media
PRODUCT_COPY_FILES += \
    device/android/lge/m1-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# Thermal
PRODUCT_COPY_FILES += \
    device/android/lge/m1-common/configs/thermal-engine-8909.conf:system/etc/thermal-engine-8909.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/m1-common/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# common msm8909
$(call inherit-product, device/lge/msm8909-common/msm8909.mk)
