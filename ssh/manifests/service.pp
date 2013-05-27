class ssh::service {
      service { "sshd":
       ensure       => running,
       hasstatus    => true,
       hasrestart   => true,
       enable       => true,
       source       => template("ssh/templates/sshd.erb"),
       require => Class['ssh::config']
   }
}
