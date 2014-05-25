class deploy_nginx::install {
      package {'nginx':
      ensure => installed,
       }
      }
