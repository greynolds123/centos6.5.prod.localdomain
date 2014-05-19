class mysql::install {
      package { [ "mysql-server.x86_64", "mysql-devel.x86_64", "mysql-connector-java.noarch", "mysql-connector-odbc.x86_64", "mysqltuner.noarch, pam_mysql.x86_64", "perl-Class-DBI-mysql.noarch" ]: 
      ensure  => present,
      require => User["mysql"],
      }

     user { 'mysql':
       ensure   => present,
       comment  => "MYSQL user",
       gid      => "27",
       shell    => "/bin/bash",
       require  => Group["mysql"],
     }

     group { 'mysql':
       ensure  => present,
     }
   }
     
