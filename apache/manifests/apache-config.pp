class apache::apache-config {
      file { '/etc/httpd/conf.d/puppet.localdomain.conf':
      port          => 80,
      dcroot        => '/var/www/www.puppet.localdomain',
      ssl           => false,
      priority      => 10,
      serveraliases => 'puppet.localdomain',
      }
    }

