LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := wpa_supplicant.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

###################################################
#	43341
###################################################
ifeq ($(strip $(WIFI_DRIVER)),bcm43341)
include $(CLEAR_VARS)
LOCAL_MODULE := nvram.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := 43341/nvram_43341_ALL_enc.bin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := usr_fw_43341.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := 43341/usr_fw_43341_enc.bin
include $(BUILD_PREBUILT)

endif
