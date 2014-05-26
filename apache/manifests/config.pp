class apache::config {
    file { '/etc/puppetlabs/puppet/httpd/conf/pe-httpd.conf/':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => templates('apache/apache.erb'),
      require => Class['apache::install'],
      notify  => Class['apache:service'],
    }
  }
