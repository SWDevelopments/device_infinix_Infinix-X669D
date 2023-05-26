#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X669D device
$(call inherit-product, device/infinix/X669D/device.mk)

PRODUCT_DEVICE := X669D
PRODUCT_NAME := twrp_X669D
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X669D
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X669D-user 12 SP1A.210812.016 104 release-keys"

BUILD_FINGERPRINT := Infinix/X669D-RU/X669D:12/SP1A.210812.016/RU-20230306V103:user/release-keys
