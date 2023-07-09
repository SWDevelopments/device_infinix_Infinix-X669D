LOCAL_PATH := device/infinix/X669D

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    bootctrl.ums9230

PRODUCT_SHARED_BOOT_CONTROL_HAL := \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    $(PRODUCT_SHARED_BOOT_CONTROL_HAL) \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Additional device-specific configurations
# Add your custom configurations for Infinix Hot 30i X669D Android 12.1 here
