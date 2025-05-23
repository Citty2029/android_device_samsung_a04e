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
$(call inherit-product, device/samsung/a04e/device.mk)

# Inherit from hq-camera-samsung
$(call inherit-product, vendor/samsung/hq-camera/hqcamera-samsung-hs04.mk)

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_DEVICE := a04e
PRODUCT_NAME := lineage_a04e
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A04e
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a04exx-user 12 SP1A.210812.016 A042FXXSAEXJ3 release-keys" \
    BuildFingerprint=samsung/a04exx/a04e:12/SP1A.210812.016/A042FXXSAEXJ3:user/release-keys


