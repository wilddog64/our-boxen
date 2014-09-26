class people::wilddog64::packages(
  $my_packages = 'UNDEF',
) {
  if ( $my_packages != 'UNDEF' ) {
    create_resources( package, $my_packages )
  }
  else {
    notice( 'no packages defined' )
  }
}
