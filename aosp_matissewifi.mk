$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/aosp/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_matissewifi
PRODUCT_RELEASE_NAME := MOTO E
