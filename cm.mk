## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := alexa

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/vertu/alexa/device_alexa.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := alexa
PRODUCT_NAME := cm_alexa
PRODUCT_BRAND := vertu
PRODUCT_MODEL := alexa
PRODUCT_MANUFACTURER := vertu
