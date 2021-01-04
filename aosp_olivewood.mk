$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the common AOSP configuration.
$(call inherit-product, vendor/aosp/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm

# Inherit from olivewood device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := olivewood
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := aosp_olivewood
PRODUCT_MODEL := Redmi 8A Dual

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := olivewood
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olivewood-user 10 QKQ1.191014.001 V11.0.3.0.QCQINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/olivewood/olivewood:10/QKQ1.191014.001/V11.0.3.0.QCQINXM:user/release-keys
