# Recovery
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_cm

# TWRP
# TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# RECOVERY_VARIANT := twrp
DEVICE_RESOLUTION := 480x854
# TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
# TW_INTERNAL_STORAGE_PATH := "/data/media"
# TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
# TW_EXTERNAL_STORAGE_PATH := "/external_sd"
# TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
# TW_SDEXT_STORAGE_PATH := "/sd-ext"
# TW_SDEXT_STORAGE_MOUNT_POINT := "sd-ext"
# TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
# TW_NO_SCREEN_TIMEOUT := true
