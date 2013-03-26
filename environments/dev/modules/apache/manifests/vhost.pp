class apache::vhost {
      file { '/var/www/www.Managed.local':
      dcroot        => '/var/www/www.Managed.local',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'Managed.local',
      }
    }
