#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/guacamoleb/guacamoleb-vendor.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# Namespace
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# tri-state key
PRODUCT_PACKAGES += \
    tri-state-key-calibrate_daemon

