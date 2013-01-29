class ldap::config {
    file { '/etc/openldap/ldap.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => '0644'
     source  => 'puppet://$puppetserver/modules/ldap/templates/ldap.erb',
     require => Class['ldap::install'],
     require => Class['ldap::server],
     notify  => Class['ldap::service]
   }
 }
