class nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true.
        source     => 'puppet:///modules/nginx/ssl.conf',
        require    => Class['nginx::config'],
         }
        }
