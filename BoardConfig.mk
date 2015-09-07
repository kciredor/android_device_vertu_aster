USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/vertu/alexa/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := alexa

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=384m
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_MKBOOTIMG_ARGS := --dt device/vertu/alexa/recovery.img-dt

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 62914560        # 61440    mmcblk0p21
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216    # 16384    mmcblk0p22
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824    # 1048576  mmcblk0p23
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12884901888 # 12582912 mmcblk0p26
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912      # 524288   mmcblk0p24
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_PREBUILT_KERNEL := device/vertu/alexa/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# required settings
DEVICE_RESOLUTION := 1080x1920
