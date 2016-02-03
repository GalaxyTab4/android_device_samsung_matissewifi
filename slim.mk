# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_tablet_wifionly.mk)

# SlimRoms specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/matissewifi/overlay/slim-common

# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_matissewifi

KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-
KERNEL_TOOLCHAIN := "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"

ANDROID_TOOLCHAIN_PREFIX := arm-linux-androideabi-
ANDROID_TOOLCHAIN := "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"

# "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-eabi-4.9-sm/bin/"
# "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"
# "$(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/"
