class apache::vhost {
      file { '/var/www/www.RHEL5.localdomain':
      dcroot        => '/var/www/www.RHEL5.localdomain',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'RHEL5.localdomain',
      }
    }
