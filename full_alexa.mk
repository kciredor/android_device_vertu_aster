$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/vertu/alexa/device.mk)

PRODUCT_NAME := full_alexa
PRODUCT_DEVICE := alexa
PRODUCT_BRAND := vertu
PRODUCT_MODEL := alexa
PRODUCT_MANUFACTURER := vertu

$(call inherit-product-if-exists, vendor/vertu/alexa/alexa-vendor.mk)
