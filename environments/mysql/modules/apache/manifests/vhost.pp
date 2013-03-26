class apache::vhost {
      file { '/var/www/www.Mysqldb.localdomain':
      dcroot        => '/var/www/www.Mysqldb.localdomain',
      port          => 80,
      ssl           => false,
      priority      => 10,
      serveraliases => 'Mysqldb.localdomain',
      }
    }
