class nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => 'puppet:///moduless/nginx/keys.erb',
        require    => Class['nginx::config']
         }
        }

       file { '/usr/share/nginx/logs':
       ensure  => "directory",
       owner   => "root",
       group   => "root",
       mode    => 750,
       }

