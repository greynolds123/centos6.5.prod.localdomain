class apache::config {
    file { '/etc/httpd/conf/httpd.conf/':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => templates('apache/templates/apache.erb'),
      require => Class['apache::install'],
      notify  => Class['apache:service'],
    }
  }
