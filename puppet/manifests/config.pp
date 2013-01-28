class puppet::config {
    file { '/etc/puppetlabs/puppet/puppet.conf':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => '0600',
      source  => templates('puppet/templates/puppet.erb/'),
      require => Class['puppet::install'],
      notify  => Class['puppet::service']
    }
  }
