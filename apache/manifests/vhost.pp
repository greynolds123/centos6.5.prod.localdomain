class apache::vhost {
      file { '/var/www/www.puppet.localdomain':
      dcroot        => '/var/www/www.puppet.localdomain',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'puppet.localdomain',
      }
    }
