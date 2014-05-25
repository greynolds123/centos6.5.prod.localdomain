class deploy_nginx::virtual {
    file {'/etc/deploy_nginx/conf.d/virtual.conf':
     ensure  => present,
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => 'puppet:///modules/deploy_nginx/virtual.conf',
     require => Class['deploy_nginx::config'],
     notify  => Class['deploy_nginx::service']
      }
     }

