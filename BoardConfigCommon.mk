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

# inherit from common msm8909
-include device/lge/msm8909-common/BoardConfigCommon.mk

LOCAL_PATH := device/lge/m1-common

# Kernel
BOARD_KERNEL_CMDLINE += vmalloc=400m

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/m1-common/rootdir/etc/fstab.qcom

# SELinux
#BOARD_SEPOLICY_DIRS += device/lge/m1-common/sepolicy
#BOARD_SEPOLICY_UNION += \
