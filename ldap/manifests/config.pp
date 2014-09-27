class ldap::config {
    file { '/etc/openldap/ldap.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => '0644',
<<<<<<< HEAD
     source  => templates('ldap/templates/ldap.erb'),
     require => Class['ldap::install'],
=======
     source  => template('ldap/ldap.conf.erb'),
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     require => Class['ldap::server'],
     notify  => Class['ldap::service']
   }
 }
