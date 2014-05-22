class nginx::ssl {
    file {'/etc/nginx/conf.d/ssl.conf':
     ensure  => present,
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => 'puppet:///modules/nginx/ssl.conf',
     require => Class['nginx::service'],
      }
     }

