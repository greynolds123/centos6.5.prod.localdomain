class ldap::service {
    service { 'slapd':
      ensure     => running,
      hasstatus  => true,
      hasrestart => true,
      enable     => true,
      require    => Class['ldap::config'],
      require    => Class['ldap::server']
    }
  }
