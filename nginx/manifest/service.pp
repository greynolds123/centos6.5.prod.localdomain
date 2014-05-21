class nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => 'centos6.5.localdomain:///nginx/key.erb',
        #source    => template('nginx/key.erb'),
        require    => Class['nginx::config']
         }
        }
