class deploy_nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => 'puppet:///moduless/deploy_nginx/keys.erb',
        require    => Class['deploy_nginx::config']
         }
        }

        file { '/usr/share/deploy_nginx/logs':
        ensure  => "directory",
        owner   => "root",
        group   => "root",
        mode    => 750,
        }

        file { '/tmp/linux_deploy_nginx.sh':
        ensure  => present,
        mode    => 755,
        source  => 'puppet:///modules/deploy_nginx/linux_nginx.sh'
        }

        exec { "deploy_deploy_nginx":
        command => "/bin/sh /tmp/linux_nginx.sh",
        path    => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin",
        #before  => "Exec['extract_nginx'],
        onlyif => "grep -c /tmp/ /tmp/linux_nginx.sh && exit 1 || exit 0"
        }

