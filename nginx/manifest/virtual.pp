class nginx::virtual {
    file {'/etc/nginx/conf.d/virtual.conf':
     ensure  => present,
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => 'puppet:///moduless/nginx/virtual.conf',
     require => Class['nginx::config'],
     notify  => Class['nginx::service']
      }
     }

