#!/system/bin/sh
MODDIR=${0%/*}

until service list | grep -q ^SurfaceFlinger; do service call SurfaceFlinger 1008 i32 1;done
