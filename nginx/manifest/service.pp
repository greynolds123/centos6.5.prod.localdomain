class nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => template('nginx/key.erb'),
        require    => Class['nginx::config'],
         }
        }
