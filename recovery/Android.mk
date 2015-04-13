LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE		:= init.recovery.qcom.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.recovery.qcom.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE		:= dt.img
#LOCAL_MODULE_TAGS	:= optional eng
#LOCAL_MODULE_CLASS	:= ETC
#LOCAL_SRC_FILES		:= kernel/dt.img
#LOCAL_MODULE_PATH	:= $(PRODUCT_OUT)
#include $(BUILD_PREBUILT)


