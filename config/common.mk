PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Themes
PRODUCT_PACKAGES += \
    AmberAccent \
    BlackAccent \
    BlueAccent \
    BlueGreyAccent \
    BrownAccent \
    CyanAccent \
    DeepOrangeAccent \
    DeepPurpleAccent \
    SystemUIDarkTheme \
    GreenAccent \
    GreyAccent \
    IndigoAccent \
    LightBlueAccent \
    LightGreenAccent \
    LimeAccent \
    OrangeAccent \
    PinkAccent \
    PurpleAccent \
    RedAccent \
    SettingsDarkTheme \
    SystemDarkTheme \
    TealAccent \
    YellowAccent \
    WhiteAccent

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common

# Google sounds
include vendor/androidx/google/GoogleAudio.mk

# Disable Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Clean up packages cache to avoid wrong strings and resources
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bin/clean_cache.sh:system/bin/clean_cache.sh
