#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0

# Check for target product
ifeq (aospa_oneplus13,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/oneplus13/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Override AOSP build properties
PRODUCT_NAME := aospa_oneplus13
PRODUCT_DEVICE := oneplus13
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2653
PRODUCT_MANUFACTURER := OnePlus

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=OnePlus13 \
    DeviceProduct=OnePlus13 \
    SystemDevice=OnePlus13 \
    SystemName=OnePlus13

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

endif
