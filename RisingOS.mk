$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/lineage/config/common_full.mk)
$(call inherit-product, vendor/lineage/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/lineage/config/BoardConfigLineage.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
-include vendor/lineage/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true

# OTA
# PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#    ro.system.ota.json_url=https://raw.githubusercontent.com/naz664/crDroid_gsi/14/ota.json

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

RISING_MAINTAINER := "OkBuddyGSI"
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_USE_PIXEL_FINGERPRINT := true
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := false

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	persist.sys.binary_xml=false \
	dalvik.vm.dex2oat64.enabled=true \

#prebuilts
PRODUCT_PACKAGES += \
  OpenEUICC \

# APN
PRODUCT_PACKAGES += apns-conf.xml

