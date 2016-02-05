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

# inherit from common msm8226
-include device/samsung/msm8226-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/matissewifi/include

TARGET_OTA_ASSERT_DEVICE := matissewifi,matissewifiue,matissewifixx

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

# Enable ART optimization
ART_USE_OPTIMIZING_COMPILER := true

# Use cortex-a15 optimized Uber toolchain
TARGET_GCC_VERSION_EXP := 4.9-cortex-a15

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/matissewifi/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000
TARGET_KERNEL_CONFIG := slim_matissewifi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/s3ve3g

# External apps on SD
TARGET_EXTERNAL_APPS = sdcard1

# Audio
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/matissewifi/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_SMD_TTY := true

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USE_COMPAT_GRALLOC_ALIGN := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# GPS
TARGET_NO_RPC := true
TARGET_GPS_HAL_PATH := device/samsung/matissewifi/gps
TARGET_PROVIDES_GPS_LOC_API := true

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/matissewifi/cmhw

# Graphics
#TARGET_HAVE_NEW_GRALLOC := true
#BOARD_USES_LEGACY_MMAP := true

# Lights
#TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488
# Use a conservative size to make sure don't run out of space
# US variant is: 2569011200
# EU variant is: 2411724800
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2400000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12661537792
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# PowerHAL
TARGET_POWERHAL_VARIANT := qcom
TARGET_POWERHAL_SET_INTERACTIVE_EXT := device/samsung/matissewifi/power/power_ext.c

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_FSTAB := device/samsung/matissewifi/rootdir/etc/recovery.fstab
BOARD_NEEDS_LZMA_MINIGZIP := true

# TWRP Build Flags
TW_THEME := landscape_mdpi
TW_HAS_DOWNLOAD_MODE := true
#TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := true
TW_NO_SCREEN_BLANK := true
TW_HAS_MTP := true
TW_USE_TOOLBOX := true

##==================================
## RECOVERY_VARIANT := multirom

# MultiROM config
#TARGET_RECOVERY_IS_MULTIROM := true
BOARD_MKBOOTIMG_ARGS += --board mrom$(shell date -u +%Y%m%d)-01
MR_DEVICE_VARIANTS := matissewifi
MR_DEVICE_VARIANTS += matissewifiue
MR_DEVICE_VARIANTS += matisse3g
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/matissewifi/multirom/mr_init_devices.c
MR_DPI := mdpi
MR_DPI_MUL := 1
MR_DPI_FONT := 160
MR_FSTAB := device/samsung/matissewifi/recovery.fstab
MR_USE_MROM_FSTAB := false
MR_KEXEC_MEM_MIN := 0x06200000
MR_KEXEC_DTB := true
#MR_INFOS := device/samsung/matissewifi/multirom/mrom_infos
#MR_ENCRYPTION := true
#MR_ENCRYPTION_SETUP_SCRIPT := device/samsung/matissewifi/multirom/mr_cp_crypto.sh
#MR_PIXEL_FORMAT := "RGBX_8888"
#MR_USE_QCOM_OVERLAY := true
#MR_QCOM_OVERLAY_HEADER := device/samsung/matissewifi/multirom/mr_qcom_overlay.h
#MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
#MR_CONTINUOUS_FB_UPDATE := true
#MR_DEVICE_HOOKS := device/samsung/matissewifi/multirom/mr_hooks.c
#MR_DEVICE_HOOKS_VER := 3
#MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true


# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/samsung/matissewifi/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_FW_PATH_STA   := "sta"
WIFI_DRIVER_FW_PATH_AP    := "ap"
