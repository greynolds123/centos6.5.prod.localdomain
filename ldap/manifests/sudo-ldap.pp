class ldap::sudo-ldap {
      file : { '/etc/sudoers':
        ensure  => present,
        owner   => "root",
        group   => "root",
        mode    => "0600",
        source  => 'puppet://$puppetserver/modules/ldap/templates/sudo-ldap.erb',
        require => Class['ldap::params']
      }
   }
