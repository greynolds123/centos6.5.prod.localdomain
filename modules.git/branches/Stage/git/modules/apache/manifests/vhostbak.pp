class apache::vhostbak { 
      files { '/var/www/www.puppet-1.localdomain':
      dcroot        => '/var/www/www.puppet-1.localdomain',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'puppet-1.localdomain',
      }
    }

