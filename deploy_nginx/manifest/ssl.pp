class deploy_nginx::ssl {
    file {'/etc/deploy_nginx/conf.d/ssl.conf':
     ensure  => present,
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => 'puppet:///moduless/deploy_nginx/ssl.conf',
     require => Class['deploy_nginx::service'],
      }
     }

