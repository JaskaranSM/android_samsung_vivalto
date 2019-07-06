$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Get non-open-source specific aspects
#$(call inherit-product-if-exists, vendor/samsung/vivaltods5m/vivaltods5m-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS +=  device/samsung/vivaltods5m/overlay

PRODUCT_COPY_FILES += \
    device/samsung/vivaltods5m/ramdisk/init.hawaii_ss_vivaltods5m.rc:root/init.hawaii_ss_vivaltods5m.rc \
	device/samsung/bcm-common/ramdisk/fstab.hawaii_ss_vivaltods5m:root/fstab.hawaii_ss_vivaltods5m \
    device/samsung/bcm-common/ramdisk/ueventd.hawaii_ss_vivaltods5mxx.rc:root/ueventd.hawaii_ss_vivaltods5m.rc

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds

# common loganxx
$(call inherit-product, device/samsung/bcm-common/vivaltods5m.mk)

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
