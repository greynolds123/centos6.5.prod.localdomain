class ssh::service {
      if $operatingsystems == '/[Ubuntu|Debian]/' {
<<<<<<< HEAD
      service { "/etc/init.d/sshd":
       ensure       => running,
       hasstatus    => true,
       hasrestart   => true,
       enable       => true,
       source       => 'puppet:///modules/ssh/ubuntu_sshd',
       require      => Class["ssh::config"],
=======
      service { '/etc/init.d/sshd':
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       source     => 'puppet:///modules/ssh/ubuntu_sshd',
       require    => Class['ssh::config'],
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
        }
       }
 
       elsif $operatingsystems == '/[Redhat|Centos|Fedora]/' {
<<<<<<< HEAD
       service { "/etc/init.d/sshd":
       ensure       => running,
       hasstatus    => true,
       hasrestart   => true,
       enable       => true,
       source       => 'puppet:///modules/ssh/sshd',
       require      => Class["ssh::config"],
=======
       service { '/etc/init.d/sshd':
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       source     => 'puppet:///modules/ssh/sshd',
       require    => Class['ssh::config'],
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
         }
        }
       }
