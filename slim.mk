# Inherit AOSP device configuration for primoc.
$(call inherit-product, device/htc/primoc/device.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)
$(call inherit-product, vendor/slim/config/cdma.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Copy 00check
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

PRODUCT_RELEASE_NAME := primoc
PRODUCT_NAME := slim_primoc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := primoc
PRODUCT_MODEL := One V
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primoc BUILD_FINGERPRINT=virgin_mobile/htc_primoc/primoc:4.2.1/JOP40C/330937:user/user-debug PRIVATE_BUILD_DESC="4.2.1 JOP40C 330937 user-debug"

# Bootanimations
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=gannon5197 \
    ro.goo.rom=slim_$(TARGET_PRODUCT) \
    ro.goo.version=$(shell date +%s)
