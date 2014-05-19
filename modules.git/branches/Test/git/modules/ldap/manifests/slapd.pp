class ldap::slapd {
    file { '/openldap/slapd.d/cn=config':
     ensure  => present,
     owner   => "root",
     group   => "root",
     mode    => "0600",
     require => Class['ldap::config'],
     notify  => Class['ldap::service']
     }
   }
    
