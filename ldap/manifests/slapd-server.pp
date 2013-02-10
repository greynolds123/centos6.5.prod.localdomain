class ldap::slapd-server {
    service { 'slapd':
      ensure     => running,
      hasstatus  => true,
      hasrestart => true,
      enable     => true,
      require    => Class['ldap::slapd'],
      require    => Class['ldap::server']
    }
  }

