# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Hardware configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.class_main.sh:root/init.class_main.sh

# Lights package
PRODUCT_PACKAGES += \
    lights.msm8909
