class people::wilddog64::macvim {

  file { "${boxen::config::homebrewdir}/bin/vi":
    ensure => link,
    target => "${boxen::config::homebrewdir}/bin/mvim"
  }
}
