# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk
#-include device/samsung/matissewifi/twrp/TWRPConfig.mk

TARGET_OTA_ASSERT_DEVICE := matissewifi,matissewifixx

LOCAL_PATH := device/samsung/matissewifi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# CMHW
BOARD_HARDWARE_CLASS += device/samsung/matissewifi/cmhw

# Init
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_matisse.c
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK 	:= $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE 		:= 0x00000000
BOARD_KERNEL_CMDLINE 		:= console=null androidboot.console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE 		:= 2048
BOARD_KERNEL_SEPARATED_DT 	:= true
BOARD_MKBOOTIMG_ARGS 		:= --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
TARGET_KERNEL_SOURCE := kernel/samsung/s3ve3g
TARGET_KERNEL_CONFIG := cm-matissewifi_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_matissewifi_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562627584

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/matissewifi

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/matissewifi/rootdir/etc/fstab.qcom
DEVICE_RESOLUTION := 1280x800

TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 126
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_THEME := landscape_hdpi
TW_INCLUDE_L_CRYPTO := false
TW_USE_TOOLBOX := true
TWHAVE_SELINUX := true

TW_NO_USB_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
BOARD_SUPPRESS_SECURE_ERASE := true

#TARGET_PREBUILT_KERNEL := device/samsung/matissewifi/twrp/kernel
#TARGET_RECOVERY_INITRC := device/htc/m8/recovery/etc/init.rc

#BOARD_RECOVERY_BLDRMSG_OFFSET := 2048

# BlissPop Configs
TARGET_TC_ROM := 4.8-sm
TARGET_TC_KERNEL := 4.8-sm
BLISSIFY := true
BLISS_O3 := true
BLISS_STRICT := false
BLISS_GRAPHITE := true
BLISS_KRAIT := true
BLISS_PIPE := true
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)

#SaberMod
-include vendor/bliss/config/sm.mk


