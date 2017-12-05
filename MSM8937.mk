LOCAL_PATH := device/Asus_X00ID/MSM8937

ifeq ($(TARGET_PREBUILT_KERNEL),)
		LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
		LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kernel:kernel \
	$(LOCAL_PATH)/recovery.fstab:root/recovery.fstab

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
	charger_res_images

# Encryption
PRODUCT_PACKAGES += \
	libcryptfs_hw

PRODUCT_NAME := MSM8937