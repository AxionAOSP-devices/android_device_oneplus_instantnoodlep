#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodlep device
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_instantnoodlep
PRODUCT_DEVICE := instantnoodlep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2025

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8Pro-user 13 RKQ1.211119.001 Q.204faf2-2-7cfdc8 release-keys" \
    BuildFingerprint=OnePlus/OnePlus8Pro/OnePlus8Pro:13/RKQ1.211119.001/Q.204faf2-2-7cfdc8:user/release-keys \
    DeviceName=OnePlus8Pro \
    DeviceProduct=OnePlus8Pro \
    SystemDevice=OnePlus8Pro \
    SystemName=OnePlus8Pro

# Device Flags

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := Itachi

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Snapdragon_865

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,8,48,5

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 16

# Torch Control
TORCH_STR_SUPPORTED := true

# Los prebuilts
TARGET_INCLUDES_LOS_PREBUILTS := true

# Ax FX
TARGET_INCLUDE_AXFX := true

# BLur
TARGET_ENABLE_BLUR := true

# Charging
BYPASS_CHARGE_SUPPORTED ?= true

# Path for charge toggle
BYPASS_CHARGE_TOGGLE_PATH ?= /sys/class/oplus_chg/battery/mmi_charging_enable
