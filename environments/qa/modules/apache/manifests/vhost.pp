class apache::vhost {
      file { '/var/www/www.puppet.puppetlabs.vm':
      dcroot        => '/var/www/www.puppetlabs.vm',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'puppet.puppetlabs.vm',
      }
    }
