class nginx::ssl {
    file {'/etc/nginx/conf.d/ssl.conf':
     ensure  => present,
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => 'puppet:///moduless/nginx/ssl.conf',
     require => Class['nginx::service'],
      }
     }

