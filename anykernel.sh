# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# EDIFY properties
properties() {
kernel.string= - by Feinzer @ GitHub
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=A0001
device.name2=bacon
}

# shell variables
block=/dev/block/platform/msm_sdcc.1/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

## end setup

# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chown -R root:root $ramdisk/*;

## AnyKernel install
dump_boot;

# begin ramdisk changes

# init.rc
ui_print " ";
mount -o rw,remount -t auto /system;
if [ -d /system ] && [ -f /system/vendor/etc/init/hw/init.qcom.power.rc ]; then
  ui_print "- Applying Fz init patch in /system/vendor"
  cp /tmp/anykernel/ramdisk/init.fz.rc /system/vendor/etc/init/hw/init.fz.rc;
  insert_line /system/vendor/etc/init/hw/init.bacon.rc "init.fz" after "import /vendor/etc/init/hw/init.qcom-common.rc" "import /vendor/etc/init/hw/init.fz.rc";
  chmod 644 /system/vendor/etc/init/hw/init.fz.rc;
  replace_string /system/vendor/etc/init/hw/init.qcom.power.rc "#start mpdecision" "start mpdecision" "#start mpdecision";
else
  ui_print "- Applying Fz init patch in ramdisk"
  insert_line init.rc "init.fz" before "import /init.usb.rc" "import /init.fz.rc";
  replace_string init.qcom.power.rc "#start mpdecision" "start mpdecision" "#start mpdecision";
fi
mount -o ro,remount -t auto /system;
# end ramdisk changes

write_boot;

## end install


