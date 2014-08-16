# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/mondrianwifi/full_mondrianwifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_mondrianwifi
