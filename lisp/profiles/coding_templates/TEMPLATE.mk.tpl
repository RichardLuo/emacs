##################################################################
# author: (>>>USER_NAME<<<)                      
# date:   (>>>ISO_DATE<<<) (>>>TIME<<<)
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

# source := (>>>FILE_SANS<<<).cpp
# source := $(wildcard src/*.c)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(source)
LOCAL_MODULE := $(basename $(source))

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

# LOCAL_CFLAGS += 

LOCAL_SHARED_LIBRARIES := libutils 
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += libui

LOCAL_SHARED_LIBRARIES += liblog

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

# include $(BUILD_SHARED_LIBRARY)
# include $(BUILD_STATIC_LIBRARY)
# include $(BUILD_EXECUTABLE)
