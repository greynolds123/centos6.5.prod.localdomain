class deploy_nginx::web {
     file {'/usr/share/deploy_nginx/html/index.html':
     ensure  => present,
     user    => 'root',
     owner   => 'root',
     mode    => 'root',
     source  => 'puppet:///moduless/deploy_nginx/web.erb',    
     require => Class['deploy_nginx::config'],
      }
     }
