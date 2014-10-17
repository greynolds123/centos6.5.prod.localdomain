class users::config {
<<<<<<< HEAD
     file { "/home":
     ensure  => "directory",
=======
     file { '/home':
     ensure  => 'directory',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
     }


<<<<<<< HEAD
     exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
     }   

      file {'/root/prodAddusers.txt':
      ensure  => present,
      source  => 'puppet:///modules/users/prodAddusers.txt',
=======
     exec { 'create_home':
     command => '/bin/mkdir  /home',
     creates => '/home',
     }

      file {'/root/prodAddusers.txt':
      ensure => present,
      source => 'puppet:///modules/users/prodAddusers.txt',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }


      file {'/root/produsers.sh':,
<<<<<<< HEAD
      ensure  => present,
      source  => 'puppet:///modules/users/produsers.sh',
      }


      exec { "produser":
      command  => "/bin/sh /root/produsers.sh",
      path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
      onlyif   => "grep -c /root/ /root/produsers.sh && exit 1 || exit 0"
=======
      ensure => present,
      source => 'puppet:///modules/users/produsers.sh',
      }


      exec { 'produser':
      command => '/bin/sh /root/produsers.sh',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      onlyif  => 'grep -c /root/ /root/produsers.sh && exit 1 || exit 0'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }

