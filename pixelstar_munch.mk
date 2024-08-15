#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelOS stuff
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)
# Pixelstar Flags
PIXELSTAR_BUILD_TYPE := official
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_BATTERY := false
TARGET_FLATTEN_APEX := false
MAINLINE_INCLUDE_VIRT_MODULE := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_NOT_SUPPORTS_GOOGLE_BATTERY := true

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

PRODUCT_NAME := pixelstar_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V816.0.4.0.ULMMIXM:user/release-keys