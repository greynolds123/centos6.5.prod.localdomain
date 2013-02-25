class deploy-cobbler {
    include deploy-cobbler::config, deploy-cobbler::install, deploy-cobbler::params, deploy-cobbler::service 
     }
