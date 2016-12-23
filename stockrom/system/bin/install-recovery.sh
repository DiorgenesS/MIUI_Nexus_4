#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7297024:30c59c81b4a234e4f6dac1fa33fd08dc25a9d56f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6643712:37cf7d9bd2bdfdba25e5f90296d87d50b6a9c42b EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 30c59c81b4a234e4f6dac1fa33fd08dc25a9d56f 7297024 37cf7d9bd2bdfdba25e5f90296d87d50b6a9c42b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
