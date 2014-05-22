class nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => 'puppet:///modules/nginx/keys.erb',
        require    => Class['nginx::config']
         }
        }
