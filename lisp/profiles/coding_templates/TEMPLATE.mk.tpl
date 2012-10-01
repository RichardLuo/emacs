##################################################################
# author: (>>>USER_NAME<<<)                      
# date:   (>>>ISO_DATE<<<) (>>>TIME<<<)
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

source_files := $(wildcard $(LOCAL_PATH)/src/*.cpp)
source_files := $(patsubst $(LOCAL_PATH)/%,%,$(source_files))

include $(CLEAR_VARS)

LOCAL_MODULE := $(firstword $(notdir $(basename $(source_files))))

LOCAL_SRC_FILES := $(source_files)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

# LOCAL_CFLAGS += 

LOCAL_SHARED_LIBRARIES := libutils 
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += liblog

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

(>>>POINT<<<)
# include $(BUILD_SHARED_LIBRARY)
# include $(BUILD_STATIC_LIBRARY)
# include $(BUILD_EXECUTABLE)
