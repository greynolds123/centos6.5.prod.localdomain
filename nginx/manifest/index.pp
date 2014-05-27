class nginx::web {
     file {'/usr/share/nginx/html/index.html':
     ensure  => present,
     user    => 'root',
     owner   => 'root',
     mode    => 0755,
     source  => 'file:///modules/nginx/index.html',    
     require => Class['nginx::config']
      }
     }

     file { '/usr/share/nginx/logs':
     ensure  => "directory",
     mode    => 0755,
     }

