# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Inherit some common Slim stuff.
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/device.mk)

#KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-
#KERNEL_TOOLCHAIN := "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"

#ANDROID_TOOLCHAIN_PREFIX := arm-linux-androideabi-
#ANDROID_TOOLCHAIN := "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"

# "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-eabi-4.9-sm/bin/"
# "/roms/bosp/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-sm/bin/"
# "$(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/"

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_matissewifi
PRODUCT_DEVICE := matissewifi
PRODUCT_BRAND := SAMSUNG
PRODUCT_MODEL := SM-T530
PRODUCT_MANUFACTURER := SAMSUNG

$(call inherit-product, device/samsung/matissewifi/device.mk)
$(call inherit-product-if-exists, vendor/samsung/matissewifi/matissewifi-vendor.mk)
