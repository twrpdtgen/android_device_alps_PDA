#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from PDA device
$(call inherit-product, device/alps/PDA/device.mk)

PRODUCT_DEVICE := PDA
PRODUCT_NAME := omni_PDA
PRODUCT_BRAND := alps
PRODUCT_MODEL := Nokia 5.1 Plus
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Panda_00WW-user 10 QP1A.190711.020 00WW_3_26L release-keys"

BUILD_FINGERPRINT := Nokia/Panda_00WW/PDA_sprout:10/QP1A.190711.020/00WW_3_26L:user/release-keys
