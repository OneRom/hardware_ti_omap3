LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES:= \
	OMX_Core.c

LOCAL_C_INCLUDES += \
	$(TI_OMX_INCLUDES) \
	$(PV_INCLUDES)

LOCAL_SHARED_LIBRARIES := \
	libdl \
	libVendor_ti_omx_config_parser \
	liblog
	
LOCAL_CFLAGS := $(TI_OMX_CFLAGS)

LOCAL_MODULE:= libOMX_Core

include $(BUILD_SHARED_LIBRARY)
