LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CLANG_CFLAGS += \
	-Wno-int-conversion \
	-Wno-incompatible-pointer-types

LOCAL_SRC_FILES := \
	dec/src/ExynosVideoDecoder.c \
	enc/src/ExynosVideoEncoder.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	hardware/samsung_slsi-cm/exynos3470/include \
	hardware/samsung_slsi-cm/exynos3470/exynos_omx/openmax/exynos_omx/include/khronos

LOCAL_HEADER_LIBRARIES := generated_kernel_headers

LOCAL_MODULE := libExynosVideoApi
LOCAL_MODULE_TAGS := optional
LOCAL_ARM_MODE := arm

include $(BUILD_STATIC_LIBRARY)
