# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
#$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 800x1280

# compile SnapdragonCamera instead of Camera2
TARGET_USES_SNAPDRAGONCAMERA := true

# Use AOSP browser rather than Chromium
TARGET_USES_AOSP_BROWSER := true

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/samsung/matissewifi/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_matissewifi
PRODUCT_DEVICE := matissewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T530
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_PRODUCT=matissewifi \
    TARGET_DEVICE=SM-T530 \
    BUILD_FINGERPRINT="4.3/JLS36C/1390465867:user/release-keys" \
    PRIVATE_BUILD_DESC="msm8226-user 4.3 JLS36C eng.root.20140510.152835 release-keys"

# Inline kernel
TARGET_KERNEL_SOURCE := kernel/samsung/s3ve3g
TARGET_KERNEL_CONFIG := slim_matissewifi_defconfig
TARGET_LEGACY_GCC_VERSION := 4.9-cortex-a15

# Inherit from proprietary blobs
$(call inherit-product, vendor/samsung/matissewifi/matissewifi-vendor.mk)
