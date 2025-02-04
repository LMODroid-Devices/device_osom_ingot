#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ingot device
$(call inherit-product, device/osom/ingot/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

PRODUCT_NAME := lmodroid_ingot
PRODUCT_DEVICE := ingot
PRODUCT_MANUFACTURER := Solana Mobile
PRODUCT_BRAND := OSOM
PRODUCT_MODEL := Saga

PRODUCT_SYSTEM_NAME := ingot

PRODUCT_GMS_CLIENTID_BASE := android-osom

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="ingot-user 14 UKQ1.240227.155 155 release-keys"

BUILD_FINGERPRINT := OSOM/ingot/ingot:14/UKQ1.240227.155/155:user/release-keys
