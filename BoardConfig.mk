# Inherit from common samsung fortuna
-include device/samsung/bcm-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/vivaltods5m

# Assert
TARGET_OTA_ASSERT_DEVICE := vivaltods5m,G313HU,GT-G313HU,hawaii,SM-G313HU

# Kernel
TARGET_KERNEL_CONFIG := cm_defconfig

# inherit from the proprietary version
#-include vendor/samsung/logands/BoardConfigVendor.mk

