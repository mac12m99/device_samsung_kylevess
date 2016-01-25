# Check for target product
ifeq (pac_kylevess,$(TARGET_PRODUCT))

# PAC boot logo
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/common/bootlogo/pac_logo_480x800.rle:root/logo.rle

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/480x800/bootanimation.zip:system/media/bootanimation.zip

# Inherit some common pac stuff.
$(call inherit-product, vendor/pac/config/pac_common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kylevess/cm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kylevess
PRODUCT_NAME := pac_kylevess
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7390
PRODUCT_CHARACTERISTICS := phone

endif
