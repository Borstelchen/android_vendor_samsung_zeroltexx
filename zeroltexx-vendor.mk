VENDOR_PATH=vendor/samsung/zeroltexx

include vendor/samsung/zeroltexx/find-vendor-blobs.mk

PRODUCT_COPY_FILES += $(call find-vendor-blobs,vendor/samsung/zeroltexx/proprietary)
