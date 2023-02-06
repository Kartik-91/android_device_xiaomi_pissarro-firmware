#
# Copyright (C) 2022 Paranoid Android
# Copyright (C) 2022 Beru Hinode
#
# SPDX-License-Identifier: Apache-2.0
# SPDX-License-Identifier: GPL-2.0-only
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),pissarro)

$(info Including firmware for pissarro...)

FIRMWARE_IMAGES := $(wildcard $(LOCAL_PATH)/images/*)

$(foreach f, $(notdir $(FIRMWARE_IMAGES)), \
    $(call add-radio-file,images/$(f)))

endif
