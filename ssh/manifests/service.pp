class ssh::service {
      if $operatingsystems == '/[Ubuntu|Debian]/' {
      service { "/etc/init.d/ssh":
       ensure       => running,
       hasstatus    => true,
       hasrestart   => true,
       enable       => true,
<<<<<<< HEAD
       source       => 'file:///modules/ssh/ubuntu_ssh',
=======
       source       => 'file:///modules/ssh/ubuntu_sshd',
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
       require      => Class["ssh::config"],
        }
       }
 
       elsif $operatingsystems == '/[Redhat|Centos|Fedora]/' {
       service { "/etc/init.d/sshd":
       ensure       => running,
       hasstatus    => true,
       hasrestart   => true,
       enable       => true,
       source       => 'file:///modules/ssh/sshd',
       require      => Class["ssh::config"],
         }
        }
       }
