
LOCAL_PATH := device/gigabyte/rio

DEVICE_PACKAGE_OVERLAYS += device/gigabyte/rio/overlay

#kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/zImage:kernel

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml


# Graphics
PRODUCT_PACKAGES += \
copybit.msm7x27a \
gralloc.msm7x27a \
hwcomposer.msm7x27a \
libtilerenderer


# Audio
PRODUCT_PACKAGES += \
audio.a2dp.default \
audio_policy.msm7x27a \
audio.primary.msm7x27a

# Power HAL
PRODUCT_PACKAGES += \
power.msm7x27a

# Video
PRODUCT_PACKAGES += \
libmm-omxcore \
libOmxCore \
libstagefrighthw


# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
ro.secure=0


$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
