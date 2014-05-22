class nginx::web {
     file {'/usr/share/nginx/html/index.html':
     ensure  => present,
     user    => 'root',
     owner   => 'root',
     mode    => 'root',
     source  => 'puppet:///modules/nginx/web.erb',    
     require => Class['nginx::config'],
      }
     }
