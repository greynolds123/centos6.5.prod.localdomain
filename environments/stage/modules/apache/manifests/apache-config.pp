class apache::apache-config {
      file { '/etc/httpd/conf.d/RHEL5.localdomain.conf':
      port          => 80,
      dcroot        => '/var/www/www.RHEL5.localdomain',
      ssl           => false,
      priority      => 10,
      serveraliases => 'RHEL5.localdomain',
      }
    }

