class ldap::service {
    service { 'openldap':
      ensure     => running,
      hasstatus  => true,
      hasrestart => true,
      enable     => true,
      require    => Class['ldap::config'],
      require    => Class['ldap::server.pp']
    }
  }
