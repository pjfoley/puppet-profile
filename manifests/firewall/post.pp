class profile::firewall::post {

  ## For a default deny configuration, the following rule might be declared
  ## here.
  #
  # firewall { '999 drop all':
  #   proto   => 'all',
  #   action  => 'drop',
  #   before  => undef,
  # }

  #reject with icmp-host-prohibited
  # firewall { '99999 - Reject remaining traffic':
  #   action  => 'reject',
  #   proto   => 'all',
  #   reject  => 'icmp-host-prohibited',
  #   source  => '0.0.0.0/0',
  # }
}
