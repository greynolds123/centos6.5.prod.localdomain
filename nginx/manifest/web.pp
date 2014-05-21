class nginx::web {
     file {'/usr/share/nginx/':
     ensure  => present,
     user    => 'root',
     owner   => 'root',
     mode    => 'root',
     source  => 'puppet:///nginx/web.erb',    
     #source  => template('nginx/web.erb'),
     require => Class['nginx::config'],
      }
     }
