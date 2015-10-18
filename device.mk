LOCAL_PATH := device/vertu/alexa

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Kernel.
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/kernel:kernel

# Ramdisk.
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/ramdisk,root)

# Prebuilt packages.
PRODUCT_COPY_FILES += \
    vendor/vertu/alexa/proprietary/vendor/lib/libtime_genoff.so:obj/lib/libtime_genoff.so

# Settings default.prop.
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

# Packages.
# PRODUCT_PACKAGES += \
#     libtime_genoff

DEVICE_RESOLUTION := 1080x1920

# Philz CWM support.
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
# $(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)

# DEVICE_PACKAGE_OVERLAYS += \
#     $(LOCAL_PATH)/overlay

# # Overlays.
# DEVICE_PACKAGE_OVERLAYS += device/htc/msm8960-common/overlay
# 
# # Boot ramdisk setup.
# PRODUCT_PACKAGES += \
#     init.qcom.sh \
#     init.qcom.usb.rc \
#     init.qcom.rc \
#     ueventd.qcom.rc
# 
# # Qualcomm scripts.
# PRODUCT_COPY_FILES += \
#     device/htc/msm8960-common/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
#     device/htc/msm8960-common/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
#     device/htc/msm8960-common/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
#     device/htc/msm8960-common/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
#     device/htc/msm8960-common/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh
