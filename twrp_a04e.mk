#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a04e device
$(call inherit-product, device/samsung/a04e/device.mk)

PRODUCT_DEVICE := a04e
PRODUCT_NAME := twrp_a04e
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A042F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a04exx-user 12 SP1A.210812.016 A042FXXS2CWC3 release-keys"

BUILD_FINGERPRINT := samsung/a04exx/a04e:12/SP1A.210812.016/A042FXXS2CWC3:user/release-keys

