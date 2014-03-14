class profile::base {
  case $::osfamily {
    'RedHat', 'Debian': {
      include profile::firewall
      Firewall {
        require  => Class['profile::firewall::pre'],
        before   => Class['profile::firewall::post'],
      }
    }
  }

  class { '::ntp': }
}
