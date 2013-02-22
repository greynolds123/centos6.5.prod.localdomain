class apache::apache-vhost { 
      files { '/var/www/www.RHEL6-1.localdomain':
      dcroot        => '/var/www/www.RHEL6-1.localdomain',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'RHEL6-1.localdomain',
      }
    }

