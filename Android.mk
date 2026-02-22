#
# Copyright (C) 2023 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),CH7n)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
