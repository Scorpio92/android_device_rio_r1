#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_ARCH_LOWMEM := true
TARGET_CPU_SMP := true

# Compiler flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp


# Graphics
BOARD_EGL_CFG              := device/gigabyte/rio/proprietary/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS

# Video
TARGET_QCOM_LEGACY_OMX := true
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# Audio
TARGET_PROVIDES_LIBAUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Wi-Fi
BOARD_WLAN_DEVICE := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH := "/data/misc/wifi/load/ar6000.ko"
WIFI_DRIVER_MODULE_NAME := "ar6000"
WIFI_TEST_INTERFACE := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
BOARD_HAS_ATH_WLAN := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8833d
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Webkit
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_FORCE_CPU_UPLOAD := true

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207943168
BOARD_FLASH_BLOCK_SIZE := 131072


# Board specific SELinux policy variable definitions
BOARD_SEPOLICY_DIRS := \
       device/zte/grand_memo/sepolicy

BOARD_SEPOLICY_UNION := \
       app.te \
       bluetooth.te \
       device.te \
       domain.te \
       drmserver.te \
       file.te \
       file_contexts \
       hci_init.te \
       init_shell.te \
       keystore.te \
       mediaserver.te \
       kickstart.te \
       nfc.te \
       rild.te \
       surfaceflinger.te \
       system.te \
       ueventd.te \
       wpa.te


