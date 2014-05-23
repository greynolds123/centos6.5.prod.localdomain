class nginx::config {
      file { '/etc/nginx/conf.d/default.conf':
      ensure  => present,
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => 'puppet:///moduless/nginx/default.conf',
      require => Class['nginx::install'],
      notify  => Class['nginx::service'],
        }

      file { '/usr/share/nginx/logs':
         ensure  => "directory",
         owner   => "root",
         group   => "root",
         mode    => 750,
     }
