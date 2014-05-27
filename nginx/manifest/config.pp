class nginx::config {
      files { '/etc/nginx':
      ensure  => present,
      user    => 'root';
      group   => 'root';
      mode    => 0644,
      source  => template('nginx/default.erb');
      require => Class['nginx::install'],
      notify  => Class['nginx::service],
        }
      }
