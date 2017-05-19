#
# Copyright (C) 2017 The LineageOS Project
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
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from karate device
$(call inherit-product, device/lenovo/karate/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := lenovo
PRODUCT_DEVICE := karate
PRODUCT_NAME := lineage_karate
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo K33
PRODUCT_MANUFACTURER := lenovo

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Lenovo/karate/K33:6.0.1/MMB29M/K33_S150_161114_ROW:user/release-keys" \
    PRIVATE_BUILD_DESC="karate-user 6.0.1 MMB29M K33_S150_161114_ROW release-keys"
