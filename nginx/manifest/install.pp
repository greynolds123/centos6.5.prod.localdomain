class nginx::install {
      Package {'nginx':
      ensure => present,
       }
      }
