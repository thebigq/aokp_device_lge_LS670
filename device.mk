$(call inherit-product-if-exists, vendor/lge/LS670/LS670-vendor.mk)

include device/lge/thunderc/device.mk

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase.ms=$(CDMA_GOOGLE_BASE) \
    ro.com.google.clientidbase.am=$(CDMA_GOOGLE_BASE) \
    ro.com.google.clientidbase.yt=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC)

DEVICE_PACKAGE_OVERLAYS += device/lge/LS670/overlay
