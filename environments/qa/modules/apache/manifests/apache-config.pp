class apache::apache-config {
      file { '/etc/httpd/conf.d/puppet.puppetlabs.vm.conf':
      port          => 80,
      dcroot        => '/var/www/www.puppet.puppetlabs.vm',
      ssl           => false,
      priority      => 10,
      serveraliases => 'puppet.puppetlabs.vm',
      }
    }

