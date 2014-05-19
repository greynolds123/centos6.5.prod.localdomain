class puppet::service {
     service { 'pe-puppet':
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       require    => Class['puppet::config'],
     }
   }  
