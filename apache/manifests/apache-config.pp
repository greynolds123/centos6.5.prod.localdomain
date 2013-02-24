class apache:apache-vhost { 'www.puppet.localdomain':
      port          => 80,
      dcroot        => '/var/www/www.puppet.localdomain',
      ssl           => false,
      priority      => 10,
      serveraliases => 'puppet.localdomain',
      }
    }

