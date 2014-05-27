class webserver::ssl {
    file {'/etc/nginx/conf.d/ssl.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',        
     mode    => 0755,
     source  => 'file:///modules/nginx/ssl.conf',
     require => Class['webserver::service'],
      }
     }

