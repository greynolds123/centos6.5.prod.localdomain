class jetty::config { 
     file {'/etc/puppetlabs/puppetdb/conf.d/jetty.ini':
     ensure  => present,
     user    => "root",
     group   => "root",
     mode    => 0644,
     source  => templates("jetty/jetty.ini"),
      }
     }

exec { "change_attr_for_jetty":
      command  => "/bin/cat ../templates/jetty.ini >  /etc/puppetlabs/puppetdb/conf.d/jetty.ini && /usr/bin/chattr +i /etc/puppetlabs/puppetdb/conf.d/jetty.ini",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin",
      onlyif   => "grep -c /etc/puppetlabs/puppetdb/conf.d/ /etc/puppetlabs/puppetdb/conf.d/jetty.ini && exit 1 || exit 0"
     }

