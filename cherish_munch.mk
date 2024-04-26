#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := cherish_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit some props from Cherish
CHERISH_BUILD_TYPE := OFFICIAL
CHERISH_MAINTAINER := HDzungx
CHERISH_CHIPSET := SM8250
CHERISH_BATTERY := 4500mAh
CHERISH_DISPLAY := 1080x2400

# Inherit some common device props
TARGET_USES_MINI_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

BUILD_FINGERPRINT := POCO/munch_global/munch:13/RKQ1.211001.001/V14.0.6.0.TLMMIXM:user/release-keys
