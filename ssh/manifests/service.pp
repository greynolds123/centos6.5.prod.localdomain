class ssh::service {
      if $operatingsystems == '/[Ubuntu|Debian]/' {
      service { "/etc/init.d/ssh":
       ensure       => running,
       hasstatus    => true,
       hasrestart   => true,
       enable       => true,
       source       => 'file:///modules/ssh/ubuntu_ssh',
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
