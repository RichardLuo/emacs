##################################################################
# author: (>>>USER_NAME<<<)                      
# date:   (>>>ISO_DATE<<<) (>>>TIME<<<)
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := (>>>FILE_SANS<<<)

LOCAL_SRC_FILES := (>>>FILE_SANS<<<).cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

# LOCAL_CFLAGS += 

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
	libbinder \
	liblog \


LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

(>>>POINT<<<)
# include $(BUILD_SHARED_LIBRARY)
# include $(BUILD_STATIC_LIBRARY)
# include $(BUILD_EXECUTABLE)
