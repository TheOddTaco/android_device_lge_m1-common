LOCAL_PATH := $(call my-dir)

ifneq ($(filter m1,$(TARGET_BOARD_PLATFORM_VARIANT)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif