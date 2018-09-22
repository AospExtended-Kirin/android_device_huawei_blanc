#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_COPY_FILES += \
   device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, device/huawei/blanc/full_blanc.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_AOSP_BASED := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# AospExtended-BuildType
#EXTENDED_BUILD_TYPE := OFFICIAL

$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_NAME := aosp_blanc
PRODUCT_DEVICE := blanc
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Mate 10 Pro
TARGET_VENDOR_DEVICE_NAME := Mate 10 Pro

#PRODUCT_PACKAGES += \
#    Launcher3 \
#    Eleven \
#    Jelly
