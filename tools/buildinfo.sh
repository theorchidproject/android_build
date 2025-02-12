#!/bin/bash

echo "# begin build properties"
echo "# autogenerated by buildinfo.sh"

echo "ro.build.id=$BUILD_ID"
echo "ro.build.display.id=$BUILD_DISPLAY_ID"
echo "ro.build.version.incremental=$BUILD_NUMBER"
echo "ro.build.version.sdk=$PLATFORM_SDK_VERSION"
echo "ro.build.version.preview_sdk=$PLATFORM_PREVIEW_SDK_VERSION"
echo "ro.build.version.preview_sdk_fingerprint=$PLATFORM_PREVIEW_SDK_FINGERPRINT"
echo "ro.build.version.codename=$PLATFORM_VERSION_CODENAME"
echo "ro.build.version.all_codenames=$PLATFORM_VERSION_ALL_CODENAMES"
echo "ro.build.version.release=$PLATFORM_VERSION"
echo "ro.build.version.security_patch=$PLATFORM_SECURITY_PATCH"
echo "ro.lineage.version.security_patch=$PLATFORM_SECURITY_PATCH_LINEAGE"
echo "ro.build.version.base_os=$PLATFORM_BASE_OS"
echo "ro.build.version.min_supported_target_sdk=$PLATFORM_MIN_SUPPORTED_TARGET_SDK_VERSION"
echo "ro.build.date=`$DATE`"
echo "ro.build.date.utc=`$DATE +%s`"
echo "ro.build.type=$TARGET_BUILD_TYPE"
echo "ro.build.user=$BUILD_USERNAME"
echo "ro.build.host=$BUILD_HOSTNAME"
echo "ro.build.tags=$BUILD_VERSION_TAGS"
echo "ro.build.flavor=$TARGET_BUILD_FLAVOR"
echo "ro.media.enc.jpeg.quality=100"
echo "ro.media.dec.jpeg.memcap=8000000"
echo "ro.media.enc.hprof.vid.bps=8000000"
echo "ro.media.capture.maxres=8m"
echo "ro.media.panorama.defres=3264×1840"
echo "ro.media.panorama.frameres=1280×720"
echo "ro.camcorder.videoModes=true"
echo "ro.media.enc.hprof.vid.fps=65"
echo "windowsmgr.max_events_per_sec=150"
echo "ro.min_pointer_dur=8 ro.max.fling_velocity=12000"
echo "ro.min.fling_velocity=8000"
echo "ro.media.enc.jpeg.quality=100"
echo "ro.config.hw_quickpoweron=true"
echo "debug.sf.nobootanimation=1"
echo "persist.sys.shutdown.mode=hibernate"
echo "ro.config.hw_fast_dormancy=1"
echo "ro.config.hw_menu_unlockscreen=false"
echo "persist.sys.use_dithering=0"
echo "persist.sys.purgeable_assets=1"
echo "dalvik.vm.dexopt-flags=m=y"
echo "ro.mot.eri.losalert.delay=1000"


if [ -n "$BOARD_BUILD_SYSTEM_ROOT_IMAGE" ] ; then
  echo "ro.build.system_root_image=$BOARD_BUILD_SYSTEM_ROOT_IMAGE"
fi
if [ -n "$AB_OTA_UPDATER" ] ; then
  echo "ro.build.ab_update=$AB_OTA_UPDATER"
fi

# These values are deprecated, use "ro.product.cpu.abilist"
# instead (see below).
echo "ro.product.cpu.abi=$TARGET_CPU_ABI"
if [ -n "$TARGET_CPU_ABI2" ] ; then
  echo "ro.product.cpu.abi2=$TARGET_CPU_ABI2"
fi
echo "ro.product.cpu.abilist=$TARGET_CPU_ABI_LIST"
echo "ro.product.cpu.abilist32=$TARGET_CPU_ABI_LIST_32_BIT"
echo "ro.product.cpu.abilist64=$TARGET_CPU_ABI_LIST_64_BIT"

if [ -n "$PRODUCT_DEFAULT_LOCALE" ] ; then
  echo "ro.product.locale=$PRODUCT_DEFAULT_LOCALE"
fi
echo "ro.wifi.channels=$PRODUCT_DEFAULT_WIFI_CHANNELS"

echo "# ro.build.product is obsolete; use ro.product.device"
echo "ro.build.product=$TARGET_DEVICE"

echo "# Do not try to parse description or thumbprint"
echo "ro.build.description=$PRIVATE_BUILD_DESC"
if [ -n "$BUILD_THUMBPRINT" ] ; then
  echo "ro.build.thumbprint=$BUILD_THUMBPRINT"
fi

echo "ro.lineage.device=$LINEAGE_DEVICE"
echo "ro.crdroid.device=$LINEAGE_DEVICE"

echo "# end build properties"
