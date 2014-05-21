class nginx::web {
     file {'/usr/share/nginx/':
     ensure  => present,
     user    => 'root',
     owner   => 'root',
     mode    => 'root',
     source  => 'centos6.5.prod.localdomain:///nginx/web.erb',    
     #source  => template('nginx/web.erb'),
     require => Class['nginx::config'],
      }
     }
