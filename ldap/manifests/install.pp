class ldap::install {
    package { 'openldap':
     ensure  => present,
    }
  }
