
LOCAL_PATH := device/gigabyte/rio

DEVICE_PACKAGE_OVERLAYS += device/gigabyte/rio/overlay

#kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/zImage:kernel

# Hardware features available on this device
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
frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml


# Graphics
PRODUCT_PACKAGES += \
copybit.msm7x27a \
gralloc.msm7x27a \
hwcomposer.msm7x27a


# FM Radio
PRODUCT_PACKAGES += \
FM2 \
libqcomfm_jni \
qcom.fmradio

# Bluetooth
PRODUCT_COPY_FILES += \
system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Lights
PRODUCT_PACKAGES += \
lights.rio

# Video
PRODUCT_PACKAGES += \
libmm-omxcore \
libOmxCore \
libstagefrighthw

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a

# GPS
PRODUCT_PACKAGES += \
    gps.rio

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a


$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
