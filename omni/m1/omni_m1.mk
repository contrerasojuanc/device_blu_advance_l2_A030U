#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_NAME := omni_m1
PRODUCT_DEVICE := m1
PRODUCT_BRAND := lge
PRODUCT_MODEL := K7
PRODUCT_MANUFACTURER := lge

#TARGET_PREBUILT_KERNEL := device/omni/m1/kernel
#PRODUCT_COPY_FILES += \
#$(TARGET_PREBUILT_KERNEL):kernel

# Kernel inline build
#TARGET_KERNEL_CONFIG := m1_mpcs_us_defconfig
#TARGET_VARIANT_CONFIG := m1_mpcs_us_defconfig
#TARGET_SELINUX_CONFIG := m1_mpcs_us_defconfig
