#
# Copyright (C) 2022 Paranoid Android
# Copyright (C) 2022 Beru Hinode
#
# SPDX-License-Identifier: Apache-2.0
# SPDX-License-Identifier: GPL-2.0-only
#

FW_PATH := device/xiaomi/pissarro-firmware

FIRMWARE_IMAGES := $(wildcard $(FW_PATH)/images/*)

AB_OTA_PARTITIONS += \
    $(foreach f, $(notdir $(FIRMWARE_IMAGES)), $(basename $(f)))
