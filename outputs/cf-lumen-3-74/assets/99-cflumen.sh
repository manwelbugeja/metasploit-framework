#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
  	backup_file $S/lib/libcflumen.so
  	backup_file $S/lib64/libcflumen.so
  	if [ -f $S/bin/surfaceflinger_cflumen ]; then
  		backup_file $S/bin/surfaceflinger
  		rm $S/bin/surfaceflinger
  		mv $S/bin/surfaceflinger_cflumen $S/bin/surfaceflinger
  	fi
  	backup_file $S/bin/surfaceflinger_shell
  ;;
  restore)
  	restore_file $S/lib/libcflumen.so
  	restore_file $S/lib64/libcflumen.so
  	if [ -f $C/system/bin/surfaceflinger ]; then
  		mv /system/bin/surfaceflinger /system/bin/surfaceflinger_cflumen
  		restore_file $S/bin/surfaceflinger
  	fi
  	restore_file $S/bin/surfaceflinger_shell
  	chcon u:object_r:system_file:s0 /system/lib/libcflumen.so
  	chcon u:object_r:system_file:s0 /system/lib64/libcflumen.so
  	chcon u:object_r:surfaceflinger_exec:s0 /system/bin/surfaceflinger
  	chcon u:object_r:system_file:s0 /system/bin/surfaceflinger_shell
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
  	# Stub
  ;;
  post-restore)
    # Stub
  ;;
esac