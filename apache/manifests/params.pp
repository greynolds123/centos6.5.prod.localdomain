class apache::params {
   case operatingsystem {
      Solaris: {
       $apache_package_name = 'httpd'
      }
      /(Ubuntu|Debian)/: {
       $apache_package_name = 'httpd'
      }
      /(RedHat|Fedora)/: {
       $apache_package_name = 'httpd'
      
  $ssl = true
  $template = 'apache/templates/vhost.conf.erb'
  $priority = '25'
  $servername = ''
  $serveraliases = ''
  $auth = false
  $redirect_ssl = false
  $ssl_path = '/etc/pki/tls/certs/'
  $options = 'Indexes FollowSymLinks MultiViews'
  $override = 'None'
  $vhost_name = '*'
  }
 }
} 

 
if $::osfamily == 'redhat' or $::operatingsystem == 'amazon' {
    $user = 'apache'
    $group = 'apache'
    $apache_name = 'httpd'
    $php_package = 'php'
    $mod_passenger_package = 'mod_passenger'
    $mod_python_package = 'mod_python'
    $mod_wsgi_package = 'mod_wsgi'
    $mod_auth_kerb_package = 'mod_auth_kerb'
    $ssl_package = 'mod_ssl'
    $apache_dev = 'httpd-devel'
    $httpd_dir = '/etc/httpd'
    $conf_dir = "${httpd_dir}/conf"
    $mod_dir = "${httpd_dir}/mod.d"
    $vdir = "${httpd_dir}/conf.d"
    $conf_file = 'httpd.conf'

$mod_packages = {
      'dev' => 'httpd-devel',
      'fcgid' => 'mod_fcgid',
      'passenger' => 'mod_passenger',
      'perl' => 'mod_perl',
      'php5' => 'php',
      'proxy_html' => 'mod_proxy_html',
      'python' => 'mod_python',
      'ssl' => 'mod_ssl',
      'wsgi' => 'mod_wsgi',
      'shibboleth' => 'shibboleth',
    }
    $mod_libs = {
      'php5' => 'libphp5.so',
    }
    $mod_identifiers = {
      'shibboleth' => 'mod_shib',
    }

} elsif $::osfamily == 'debian' {
    $user = 'www-data'
    $group = 'www-data'
    $apache_name = 'apache2'
    $php_package = 'libapache2-mod-php5'
    $mod_passenger_package = 'libapache2-mod-passenger'
    $mod_python_package = 'libapache2-mod-python'
    $mod_wsgi_package = 'libapache2-mod-wsgi'
    $mod_auth_kerb_package = 'libapache2-mod-auth-kerb'
    $apache_dev = ['libaprutil1-dev', 'libapr1-dev', 'apache2-prefork-dev']
    $vdir = '/etc/apache2/sites-enabled/'
    $proxy_moduless = ['proxy', 'proxy_http']
    $mod_packages = {
      'dev' => ['libaprutil1-dev', 'libapr1-dev', 'apache2-prefork-dev'],
      'fcgid' => 'libapache2-mod-fcgid',
      'passenger' => 'libapache2-mod-passenger',
      'perl' => 'libapache2-mod-perl2',
      'php5' => 'libapache2-mod-php5',
      'proxy_html' => 'libapache2-mod-proxy-html',
      'python' => 'libapache2-mod-python',
      'wsgi' => 'libapache2-mod-wsgi',
    }
    $mod_libs = {}
    $mod_identifiers = {}
  } else {
    fail("Class['apache::params']: Unsupported operatingsystem: $operatingsystem")
  }
