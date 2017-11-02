LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),MSM8937)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif