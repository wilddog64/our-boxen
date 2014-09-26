class people::wilddog64::vagrant_plugin(
  $plugins = 'UNDEF',
) {
  if ( $plugins == 'UNDEF' ) {
    notice( 'no plugins installed' )
  }
  else {
    create_resources( 'vagrant::plugin', $plugins )
  }
}
