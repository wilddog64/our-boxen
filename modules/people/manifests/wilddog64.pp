class people::wilddog64 {
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::universal_access::ctrl_mod_zoom
  include osx::no_network_dsstores
  include osx::disable_app_quarantine
  include brewcask

  class { 'vagrant':
    completion => true,
    version    => '1.6.5',
    require    => Class['people::wilddog64::packages'],
    notify     => Class['people::wilddog64::vagrant_plugin']
  }

  class { 'people::wilddog64::macvim':
    require => Class['people::wilddog64::packages']
  }

  class { 'people::wilddog64::packages':
    notify => Class['people::wilddog64::zsh'],
  }

  class { 'people::wilddog64::zsh': }
  class { 'people::wilddog64::vagrant_plugin': }
}
