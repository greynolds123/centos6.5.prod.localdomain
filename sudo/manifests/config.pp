class sudo::config {
   file { '/etc/suoers':
   ensure  => present,
   owner   => root,
   group   => root,
   mode    => "0600",
   soure   => 'file:///modules/sudoers',
   require => Class['sudo::params'],
   }
 file_line { 'sudo_rule':
         path  => '/etc/sudoers',
         line => 'User_Alias ADMINS     = greynolds, puppet',
         line => 'Cmnd_Alias NETWORKING = /sbin/route, /sbin/ifconfig, /bin/ping, /sbin/dhclient, /usr/bin/net, /sbin/iptables, /usr/bin/rfcomm, /usr/bin/wvdial, /sbin/iwconfig, /sbin/mii-tool',
         line => 'Cmnd_Alias SOFTWARE   = /bin/rpm, /usr/bin/up2date, /usr/bin/yum',
         line => 'Cmnd_Alias SERVICES   = /sbin/service, /sbin/chkconfig',
         line => 'Cmnd_Alias LOCATE     = /usr/bin/updatedb',
         line => 'Cmnd_Alias STORAGE    = /sbin/fdisk, /sbin/sfdisk, /sbin/parted, /sbin/partprobe, /bin/mount, /bin/umount',
         line => 'Cmnd_Alias DELEGATING = /usr/sbin/visudo, /bin/chown, /bin/chmod, /bin/chgrp',
         line => 'Cmnd_Alias PROCESSES  = /bin/nice, /bin/kill, /usr/bin/kill, /usr/bin/killall',
         line => 'Cmnd_Alias DRIVERS    = /sbin/modprobe',
         line => '%users  ALL=/sbin/mount /mnt/cdrom, /sbin/umount /mnt/cdrom',
         line => '%wheel ALL=(ALL) ALL',
         line => 'root  ALL=(ALL) ALL',
         line => '%sudo ALL=(ALL) ALL',
  }
}

   exec { "Reload_shell":
   command => "/usr/bin/newgrp",
   onlyif  => "/bin/grep -c /etc/ /etc/sudoers && exit 1 || exit 0",
   }
