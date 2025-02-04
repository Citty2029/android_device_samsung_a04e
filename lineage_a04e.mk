#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a05m device
$(call inherit-product, device/samsung/a05m/device.mk)

# Inherit from hq-camera-samsung
$(call inherit-product, vendor/samsung/hq-camera/hqcamera-samsung.mk)

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_DEVICE := a05m
PRODUCT_NAME := lineage_a05m
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A05
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a05mxx-user 14 UP1A.231005.007 A055FXXS7CXJ1 release-keys" \
    BuildFingerprint=samsung/a05mxx/a05m:14/UP1A.231005.007/A055FXXS7CXJ1:user/release-keys


