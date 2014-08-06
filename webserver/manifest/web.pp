class nginx::web {
     file {'/usr/share/nginx/':
     ensure  => present,
     user    => 'root';
     owner   => 'root';
     mode    => 'root';    
     source  => template('nginx/web.erb');
     require => Class['nginx::config'],
      }
     }
