class ssh::service {
      if $operatingsystems == '/[Ubuntu|Debian]/' {
      service { '/etc/init.d/sshd':
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       source     => 'puppet:///modules/ssh/ubuntu_sshd',
       require    => Class['ssh::config'],
        }
       }
 
       elsif $operatingsystems == '/[Redhat|Centos|Fedora]/' {
       service { '/etc/init.d/sshd':
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       source     => 'puppet:///modules/ssh/sshd',
       require    => Class['ssh::config'],
         }
        }
       }
