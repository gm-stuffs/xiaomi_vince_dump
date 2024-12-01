#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38399310:86d7dce206053f0e6d3f3dd7dbe364e6b9cfb43f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:32828746:2465a5862626a45144bf4bd898e713ec71cbc256 EMMC:/dev/block/bootdevice/by-name/recovery 86d7dce206053f0e6d3f3dd7dbe364e6b9cfb43f 38399310 2465a5862626a45144bf4bd898e713ec71cbc256:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
