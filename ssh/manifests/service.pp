class ssh::service {
      service { "sshd":
       ensure       => running,
       hasstatus    => true,
       hasrestart   => true,
       enable       => true,
       source       => 'file:///modules/sshd_config',
       require => Class['ssh::config'],
   }
}
