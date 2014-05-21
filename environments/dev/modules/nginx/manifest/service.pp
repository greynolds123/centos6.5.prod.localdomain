class nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => 'puppet:///nginx/keys.erb',
        #source    => template('nginx/keys.erb'),
        require    => Class['nginx::config']
         }
        }
