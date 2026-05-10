SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "    Dynamic System Tweaks      "
  ui_print "   By Cyberdev | Ver: v4.7     "
  ui_print "    Arch: arm-v7a/arm-v8a      "
  ui_print "*******************************"
}
on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH/system 0 0 0755 0644
  chmod -R 755 $MODPATH
}

