class apache::apache-config {
      file { '/etc/httpd/conf.d/managed.local.conf':
      port          => 80,
      dcroot        => '/var/www/www.Managed.local',
      ssl           => false,
      priority      => 10,
      serveraliases => 'Managed',
      }
    }

