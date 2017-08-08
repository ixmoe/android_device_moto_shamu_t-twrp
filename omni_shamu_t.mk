#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Release name
PRODUCT_RELEASE_NAME := shamu_t

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

PRODUCT_NAME := omni_shamu_t
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := shamu_t
PRODUCT_MODEL := Moto X Pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_VENDOR_PRODUCT_NAME := shamu_t
TARGET_VENDOR_DEVICE_NAME := shamu_t
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=shamu_t PRODUCT_NAME=omni_shamu_t

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/shamu_t/shamu_t:7.1.1/N6F27H/4072753:user/release-keys \
    PRIVATE_BUILD_DESC="shamu_t-user 7.1.1 N6F27H 4072753 release-keys"
