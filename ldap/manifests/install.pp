class ldap::install {
    package { 'openldap', 'slapd':
     ensure  => present,
    }
  }
    
