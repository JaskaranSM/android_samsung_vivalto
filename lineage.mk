# Inherit some common lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/vivaltods5m/full_vivaltods5m.mk)

# Setup device configuration
PRODUCT_DEVICE := vivaltods5m
PRODUCT_NAME := lineage_vivaltods5m