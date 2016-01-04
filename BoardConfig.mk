USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/kylevess/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := hawaii

# Assert
TARGET_OTA_ASSERT_DEVICE := kylevess,S7390,GT-S7390,hawaii

# Kernel
BOARD_KERNEL_BASE := 0x82000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := cyanogenmod_kylevess_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/kylevess
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1395654656
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2189426688
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kylevess/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/kylevess/libbt_vndcfg_s7272.txt

# Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI     := true
WPA_BUILD_SUPPLICANT        := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b1
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"

# Hardware rendering
BOARD_EGL_CFG := device/samsung/kylevess/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DHAWAII_HWC

# Audio
BOARD_USES_ALSA_AUDIO := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
  endif

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
#BOARD_CHARGER_ENABLE_SUSPEND := true
#BOARD_ALLOW_SUSPEND_IN_CHARGER := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-kylevess.hawaii

# Recovery
#TARGET_RECOVERY_INITRC :=
TARGET_RECOVERY_FSTAB := device/samsung/kylevess/ramdisk/fstab.hawaii_ss_kylevess
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := false
BOARD_RECOVERY_ALWAYS_WIPES := false

# CMHW
BOARD_HARDWARE_CLASS := device/samsung/kylevess/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/kylevess/include

DEVICE_RESOLUTION := 480x800

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/kylevess/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
endif
