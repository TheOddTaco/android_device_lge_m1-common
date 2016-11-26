#
# Copyright 2013 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ms330)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Create modem firmware links
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 modem.b06 modem.b07 modem.b08 modem.b09 modem.b10 modem.mdt \
    modem_fw.b00 modem_fw.b01 modem_fw.b02 modem_fw.b03 modem_fw.b04 modem_fw.b05 modem_fw.b09 modem_fw.b10 modem_fw.b11 modem_fw.b12 \
    modem_fw.b13 modem_fw.b15 modem_fw.b16 modem_fw.b23 modem_fw.b24 modem_fw.b25 modem_fw.b27 modem_fw.b28 modem_fw.b31 modem_fw.mdt

FIRMWARE_MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(FIRMWARE_MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MODEM_SYMLINKS)

# Create WCNSS firmware links
WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 wcnss.b09 wcnss.10 wcnss.b11 wcnass.b12 wcnss.mdt 

FIRMWARE_WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WCNSS_IMAGES)))
$(FIRMWARE_WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_WCNSS_SYMLINKS)

# Create Widevine links
WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

FIRMWARE_WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WIDEVINE_IMAGES)))
$(FIRMWARE_WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WIDEVINE Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_WIDEVINE_SYMLINKS)

# Create KEYMASTE links
KEYMASTE_IMAGES := \
    keymaste.b00 keymaste.b01 keymaste.b02 keymaste.mdt 

FIRMWARE_KEYMASTE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(KEYMASTE_IMAGES)))
$(FIRMWARE_KEYMASTE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "KEYMASTE Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_KEYMASTE_SYMLINKS)

# Create CMNLIB Links
CMNLIB_IMAGES :\
     cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.bo3 cmnlib.mdt

FIRMWARE_CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CMNLIB_IMAGES)))
$(FIRMWARE_CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMNLIB Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CMNLIB_SYMLINKS)

# Create wlan symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/prima; \
        ln -sf /persist/WCNSS_qcom_wlan_nv.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin)

endif
