class ldap::config {
    file { '/etc/openldap/ldap.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => '0644',
     source  => template('ldap/ldap.erb'),
     require => Class['ldap::server'],
     notify  => Class['ldap::service']
   }
 }
