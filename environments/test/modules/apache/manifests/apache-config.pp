class apache::apache-config {
      file { '/etc/httpd/conf.d/RHEL6.localdomain.conf':
      port          => 80,
      dcroot        => '/var/www/www.RHEL6.localdomain',
      ssl           => false,
      priority      => 10,
      serveraliases => 'RHEL6.localdomain',
      }
    }

