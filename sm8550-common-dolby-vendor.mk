#
# Copyright (C) 2026 The PixelOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Dolby audio proprietary files for fuxi.
#
# ELF files (.so and the two HAL binaries) are installed as Soong prebuilt
# modules declared in Android.bp, not through PRODUCT_COPY_FILES: Android 17
# rejects ELF files copied that way
# ("found ELF prebuilt in PRODUCT_COPY_FILES, use cc_prebuilt_binary /
#   cc_prebuilt_library_shared instead").

PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/sm8550-common-dolby

# Dolby audio effect libraries (installed to /vendor/lib64/soundfx)
PRODUCT_PACKAGES += \
    libdlbvol \
    libhwdap \
    libshoebox \
    libspatializer \
    libswgamedap \
    libswspatializer \
    libswvqe \
    libmisoundfx

# Dolby DAP support libraries
PRODUCT_PACKAGES += \
    libdapparamstorage \
    libdlbpreg \
    libdlbdsservice \
    libspatializerparamstorage \
    libswspatializer_ext \
    libdeccfg

# Dolby audio Codec2 store and decoders (IComponentStore/default1)
PRODUCT_PACKAGES += \
    vendor.dolby.media.c2@1.0-service \
    libcodec2_store_dolby \
    libcodec2_soft_ac4dec \
    libcodec2_soft_ddpdec

# Dolby Management Service
PRODUCT_PACKAGES += \
    vendor.dolby.hardware.dms@2.0-service \
    vendor.dolby.hardware.dms@2.0 \
    vendor.dolby.hardware.dms@2.0-impl

# Configs (plain data files, these stay as PRODUCT_COPY_FILES)
PRODUCT_COPY_FILES += \
    vendor/xiaomi/sm8550-common-dolby/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml
