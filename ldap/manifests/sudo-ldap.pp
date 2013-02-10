class ldap::sudo-ldap {
      file { '/etc/sudo-ldap.conf':
        ensure  => present,
        owner   => "root",
        group   => "root",
        mode    => "0600",
        source  => templates('ldap/templates/sudo-ldap.erb'),
        require => Class['ldap::params']
      }
   }
