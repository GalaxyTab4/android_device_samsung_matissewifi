# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_tablet_wifionly.mk)

# SlimRoms specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/matissewifi/overlay/slim-common

# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_matissewifi

KERNEL_TOOLCHAIN_PREFIX := arm-cortex_a15-linux-gnueabihf-
KERNEL_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilt/linux-x86/toolchain/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/"

ANDROID_TOOLCHAIN_PREFIX := arm-cortex_a15-linux-gnueabihf-
ANDROID_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilt/linux-x86/toolchain/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/"

# "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-eabi-4.9-sm/bin/"
# "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"
# "$(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/"
# "$(ANDROID_BUILD_TOP)/prebuilt/linux-x86/toolchain/linaro-4.9-15.05/bin/"
