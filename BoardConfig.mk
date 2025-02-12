#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vili

# Inherit from common device
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := vili

# Camera
MALLOC_SVELTE_FOR_LIBC32 := true
MALLOC_SVELTE := true

# MIUI camera stuff
-include vendor/xiaomi/vili-miuicamera/products/board.mk

# Firmware
-include vendor/xiaomi/vili-firmware/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG += vendor/vili_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
  hwid.ko

BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := vili

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include proprietary-files
include vendor/xiaomi/vili/BoardConfigVendor.mk
