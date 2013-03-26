class apache::apache-config {
      file { '/etc/httpd/conf.d/Mysqldb.localdomain.conf':
      port          => 80,
      dcroot        => '/var/www/www.Mysqldb.localdomain',
      ssl           => false,
      priority      => 10,
      serveraliases => 'Mysqldb.localdomain',
      }
    }
