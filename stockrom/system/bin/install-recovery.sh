#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9123840 37bcf9c3cc4f44a8e43293eb036f6b34dea94fb2 6748160 83c09d521b34a40730aac59e61297b1dcb3d2072
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9123840:37bcf9c3cc4f44a8e43293eb036f6b34dea94fb2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6748160:83c09d521b34a40730aac59e61297b1dcb3d2072 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 37bcf9c3cc4f44a8e43293eb036f6b34dea94fb2 9123840 83c09d521b34a40730aac59e61297b1dcb3d2072:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
