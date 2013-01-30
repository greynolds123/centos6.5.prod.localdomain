class apache:vhost { 'www.puppet.localdomain':
       port           => 80,
       dcroot         => '/opt/puppet/var/www/www.puppet.localdomain',
       ssl            => true,
       priority       => 10,
       serveraliases  +> 'puppet.localdomain',
       }
