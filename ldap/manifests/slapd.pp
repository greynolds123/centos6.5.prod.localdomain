class ldap::slapd {
    file { '/openldap/slapd.d/cn=config':
     ensure  => present,
<<<<<<< HEAD
     owner   => "root",
     group   => "root",
     mode    => "0600",
=======
     owner   => 'root',
     group   => 'root',
     mode    => '0600',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     require => Class['ldap::config'],
     notify  => Class['ldap::service']
     }
   }
    
