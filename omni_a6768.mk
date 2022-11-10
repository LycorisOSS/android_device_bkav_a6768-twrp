#
# Copyright (C) 2022 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a6768 device
$(call inherit-product, device/bkav/a6768/device.mk)

PRODUCT_DEVICE := a6768
PRODUCT_NAME := omni_a6768
PRODUCT_BRAND := Bphone
PRODUCT_MODEL := Bphone A Series
PRODUCT_MANUFACTURER := BKAV

PRODUCT_GMS_CLIENTID_BASE := android-jimi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k69v1_64-user 11 RP1A.200720.011 9.1.1.4 release-keys"

BUILD_FINGERPRINT := Bphone/Bphone_A_Series/Bphone_A_Series:11/RP1A.200720.011/9.1.1.4:user/release-keys
