class people::wilddog64::zsh {

  # change default shell to zsh managed by homebrew
  osx_chsh { $::luser:
    shell   => "${boxen::config::homebrewdir}/bin/zsh"
  }

  file_line { 'add zsh to /etc/shells':
    path => '/etc/shells',
    line => "${boxen::config::homebrewdir}/bin/zsh",
  }
}
