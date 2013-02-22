class apache::vhost {
      file { '/var/www/www.RHEL6.localdomain':
      dcroot        => '/var/www/www.RHEL6.localdomain',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'RHEL6.localdomain',
      }
    }
