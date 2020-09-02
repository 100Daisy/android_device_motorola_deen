#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/motorola/deen/device.mk)

# Inherit some common rr stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit PixelGApps
ifeq ($(WITH_GMS),true)
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
RR_BUILDTYPE := Gapps
DEVICE_PACKAGE_OVERLAYS += \
	$(LOCAL_PATH)/overlay-gms
endif

# Inherit OPScreen Recorder
$(call inherit-product-if-exists, vendor/apps/OPScreenRecord/config.mk)

PRODUCT_NAME := rr_deen
PRODUCT_DEVICE := deen
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := One
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi