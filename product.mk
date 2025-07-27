# Disable Lawnchair if GMS is not enabled
ifeq ($(strip $(WITH_GMS)),false)
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
endif

# Lawnchair
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER ?= true
ifeq ($(strip $(TARGET_PREBUILT_LAWNCHAIR_LAUNCHER)),true)
PRODUCT_PACKAGES += \
    Lawnchair \
    LawnchairOverlay 

# Lawnchair Launcher
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.quickswitch_lawnchair_shipped=1
else
# Lawnchair Launcher
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.quickswitch_lawnchair_shipped=0
endif

#PRODUCT_PACKAGES += \
#    SearchHelper

#TARGET_PREBUILT_BCR ?= true

# Basic call recorder
#ifeq ($(strip $(TARGET_PREBUILT_BCR)),true)
#PRODUCT_PACKAGES += \
#    Bcr
#endif
