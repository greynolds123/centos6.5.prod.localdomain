class apache:apache-vhost { 'www.puppet.localdomain.bak':
      port          => 80,
      dcroot        => '/var/www/www.puppet.localdomain.bak',
      ssl           => false,
      priority      => 10,
      serveraliases => 'puppet.localdomain',
      }
    }

