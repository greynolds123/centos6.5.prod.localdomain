class webserver::nginx {
    include webserver::nginx::config, webserver::nginx::install, webserver::nginx::params, webserver::nginx::service, webserver::nginx::ssl, webserver::nginx::virtual, webserver::nginx::web
    }
