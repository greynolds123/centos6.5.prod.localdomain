class webserver::web {
     file {'/usr/share/nginx/html/index.html':
     ensure  => present,
     user    => 'root',
     owner   => 'root',
     mode    => 0755,
     source  => 'file:///modules/webserver/index.html',    
     require => Class['webserver::config']
      }
     }

     file { '/usr/share/nginx/logs':
     ensure  => "directory",
     mode    => 0755,
     }

