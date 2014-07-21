<<<<<<< HEAD
# The Openstack modules:

## Introduction

The Openstack Puppet Modules are a flexible Puppet implementation capable of
configuring the core [Openstack](http://docs.openstack.org/) services:

  * [nova](http://nova.openstack.org/)     (compute service)
  * [glance](http://glance.openstack.org/)   (image database)
  * [swift](http://swift.openstack.org/)    (object store)
  * [keystone](http://keystone.openstack.org/) (authentication/authorization)
  * [horizon](http://horizon.openstack.org/)  (web front end)

A ['Puppet Module'](http://docs.puppetlabs.com/learning/modules1.html#modules)
is a collection of related content that can be used to model the configuration
of a discrete service.

These modules are based on the adminstrative guides for openstack
[compute](http://docs.openstack.org/essex/openstack-compute/admin/content/) and
[object store](http://docs.openstack.org/essex/openstack-object-storage/admin/content/)

## Dependencies:

### Puppet:

  * [Puppet](http://docs.puppetlabs.com/puppet/) 2.7.12 or greater
  * [Facter](http://www.puppetlabs.com/puppet/related-projects/facter/) 1.6.1 or
    greater (versions that support the osfamily fact)

### Platforms:

  These modules have been fully tested on Ubuntu Precise and Debian Wheezy.

  For instructions of how to use these modules on Debian, check
  out this excellent [link](http://wiki.debian.org/OpenStackPuppetHowto):

  The instuctions in this document have only been verified on Ubuntu Precise.

### Network:

  Each of the machines running the Openstack services should have a minimum of 2
  NICS.

  * One for the public/internal network
      - This nic should be assigned an IP address
  * One of the virtual machine network
      - This nic should not have an ipaddress assigned

  If machines only have one NIC, it is necessary to manually create a bridge
  called br100 that bridges into the ip address specified on that NIC

  All interfaces that are used to bridge traffic for the internal network
  need to have promiscuous mode set.

  Below is an example of setting promiscuous mode on an interface on Ubuntu.


        #/etc/network/interfaces   
        auto eth1
        iface eth1 inet manual
          up ifconfig $IFACE 0.0.0.0 up
          up ifconfig $IFACE promisc

### Volumes:

  Every node that is configured to be a nova volume service must have a volume
  group called `nova-volumes`.

### Compute nodes

  Compute nodes should be deployed onto physical hardware.

  If compute nodes are deployed on virtual machines for testing, the
  libvirt_type must be configured as 'qemu'.

    class { 'openstack::compute':
      ...
      libvirt_type => 'qemu'
      ...
    }

    class { 'openstack::all':
      ...
      libvirt_type => 'qemu'
      ...
    }

## Installation

### Install Puppet

  * Puppet should be installed on all nodes:

    `apt-get install puppet`

  * A Puppet master is not required for all-in-one installations. It is,
    however, recommended for multi-node installations.

    * To install the puppetmaster:

      `apt-get install puppetmaster`

    * Rake and Git should also be installed on the Puppet Master:

      `apt-get install rake git`

    * Some features of the modules require
      [storeconfigs](http://projects.puppetlabs.com/projects/1/wiki/Using_Stored_Configuration)
      to be enabled on the Puppet Master.

    * Create a site manifest site.pp on the master:

            cat > /etc/puppet/manifests/site.pp << EOT
            node default {
              notify { 'I can connect!': }
            }
            EOT

    * Restart the puppetmaster service:

      `service puppetmaster restart`

    * Configure each client to connect to the master and enable pluginsync. This
      can be done by adding the following lines to /etc/puppet.conf:

            [agent]
              pluginsync = true
              server     = <CONTROLLER_HOSTNAME>

    * Register each client with the puppetmaster:

      `puppet agent -t --waitforcert 60`

    * On the puppetmaster, sign the client certificates:

      `puppet cert sign <CERTNAME>`

### Install the Openstack modules

  * The Openstack modules should be installed into the module path of your
    master or on each node (if you are running puppet apply).

    Modulepath:
      * open source puppet - /etc/puppet/modules
      * Puppet Enterprise - /etc/puppetlabs/puppet/modules

  * To install the released versions from the forge:

      `puppet module install puppetlabs-openstack`

  * To install the latest revision of the modules from git (for developers/
    contributors):

        cd <module_path>
        git clone git://github.com/puppetlabs/puppetlabs-openstack openstack
        cd openstack
        rake modules:clone

## puppetlabs-openstack

The 'puppetlabs-openstack' module was written for those who want to get up and
running with a single or multi-node Openstack deployment as quickly as possible.
It provides a simple way of deploying Openstack that is based on best practices
shaped by companies that contributed to the design of these modules.

### Classes

####  openstack::all

The openstack::all class provides a single configuration interface that can be
used to deploy all Openstack services on a single host.

This is a great starting place for people who are just kicking the tires with
Openstack or with Puppet deployed OpenStack environments.

##### Usage Example:

  An openstack all in one class can be configured as follows:

    class { 'openstack::all':
      public_address       => '192.168.1.12',
      public_interface     => 'eth0',
      private_interface    => 'eth1',
      admin_email          => 'some_admin@some_company',
      admin_password       => 'admin_password',
      keystone_admin_token => 'keystone_admin_token',
      nova_user_password   => 'nova_user_password',
      glance_user_password => 'glance_user_password',
      rabbit_password      => 'rabbit_password',
      rabbit_user          => 'rabbit_user',
      libvirt_type         => 'kvm',
      fixed_range          => '10.0.0.0/24',
    }

  For more information on the parameters, check out the inline documentation in
  the manifest:

    <module_path>/openstack/manifests/all.pp

#### openstack::controller

The openstack::controller class is intended to provide basic support for
multi-node Openstack deployments.

There are two roles in this basic multi-node Openstack deployment:
  * controller - deploys all of the central management services
  * compute    - deploys the actual hypervisor on which VMs are deployed.

The openstack::controller class deploys the following Openstack services:
  * keystone
  * horizon
  * glance
  * nova (ommitting the nova compute service and, when multi_host is enabled,
    the nova network service)
  * mysql
  * rabbitmq

##### Usage Example:

  An openstack controller class can be configured as follows:

    class { 'openstack::controller':
      public_address          => '192.168.101.10',
      public_interface        => 'eth0',
      private_interface       => 'eth1',
      internal_address        => '192.168.101.10',
      floating_range          => '192.168.101.64/28',
      fixed_range             => '10.0.0.0/24',
      multi_host              => false,
      network_manager         => 'nova.network.manager.FlatDHCPManager',
      admin_email             => 'admin_email',
      admin_password          => 'admin_password',
      keystone_admin_token    => 'keystone_admin_token',
      glance_user_password    => 'glance_user_password',
      nova_user_password      => 'nova_user_password',
      rabbit_password         => 'rabbit_password',
      rabbit_user             => 'rabbit_user',
    }

  For more information on the parameters, check out the inline documentation in
  the manifest:

    <module_path>/openstack/manifests/controller.pp

#### openstack::compute

The Openstack compute class is used to manage the underlying hypervisor.  A
typical multi-host Openstack installation would consist of a single
openstack::controller node and multiple openstack::compute nodes (based on the
amount of resources being virtualized)

The openstack::compute class deploys the following services:
  * nova
      - compute service (libvirt backend)
      - optionally, the nova network service (if multi_host is enabled)
      - optionally, the nova api service (if multi_host is enabled)
      - optionally, the nova volume service if it is enabled

##### Usage Example:

  An openstack compute class can be configured as follows:

    class { 'openstack::compute':
      private_interface  => 'eth1',
      internal_address   => $ipaddress_eth0,
      libvirt_type       => 'kvm',
      fixed_range        => '10.0.0.0/24',
      network_manager    => 'nova.network.manager.FlatDHCPManager',
      multi_host         => false,
      sql_connection     => 'mysql://nova:nova_db_passwd@192.168.101.10/nova',
      rabbit_host        => '192.168.101.10',
      glance_api_servers => '192.168.101.10:9292',
      vncproxy_host      => '192.168.101.10',
      vnc_enabled        => true,
      manage_volumes     => true,
    }

  For more information on the parameters, check out the inline documentation in
  the manifest:

    <module_path>/openstack/manifests/compute.pp

### Creating your deployment scenario

So far, classes have been discussed as configuration interfaces used to deploy
the openstack roles. This section explains how to apply these roles to actual
nodes using a puppet site manifest.

The default file name for the site manifest is site.pp. This file should be
contained in the puppetmaster's manifestdir:

* open source puppet - /etc/puppet/manifests/site.pp
* Puppet Enterprise - /etc/puppetlabs/puppet/manifests/site.pp

Node blocks are used to map a node's certificate name to the classes
that should be assigned to it.

[Node blocks](http://docs.puppetlabs.com/guides/language_guide.html#nodes)
can match specific hosts:

    node my_explicit_host {...}

Or they can use regular expression to match sets of hosts

    node /my_similar_hosts/ {...}

Inside the site.pp file, Puppet resources declared within node blocks are
applied to those specified nodes. Resources specified at top-scope are applied
to all nodes.

### Deploying an Openstack all-in-one environment

The easiest way to get started with the openstack::all class is to use the file

    <module_dir>/openstack/examples/site.pp

There is a node entry for

    node /openstack_all/ {...}

that can be used to deploy a simple nova all-in-one environment.

You can explicitly target this node entry by specifying a matching certname and
targeting the manifest explicitly with:

    puppet apply /etc/puppet/modules/openstack/examples/site.pp --certname openstack_all

You could also update site.pp with the hostname of the node on which you wish to
perform an all-in-one installation:

    node /<my_node>/ {...}

If you wish to provision an all-in-one host from a remote puppetmaster, you can run the following command:

    puppet agent -td

### Deploying an Openstack multi-node environment

A Puppet Master should be used when deploying multi-node environments.

The example modules and site.pp should be installed on the Master.

This file contains entries for:

    node /openstack_controller/ {...}

    node /openstack_compute/ {...}

Which can be used to assign the respective roles.

(As above, you can replace these default certificate names with the hostnames of
your nodes)

The first step for building out a multi-node deployment scenario is to choose
the IP address of the controller node.

Both nodes will need this configuration parameter.

In the example site.pp, replace the following line:

    $controller_node_address = <your_node_ip>

with the IP address of your controller.

It is also possible to use store configs in order for the compute hosts to
automatically discover the address of the controller host. Documentation for
this may not be available until a later release of the openstack modules.

Once everything is configured on the master, you can configure the nodes using:

    puppet agent -t <--certname ROLE_CERTNAME>

It is recommended that you first configure the controller before configuring
your compute nodes:

    openstack_controller> puppet agent -t --certname openstack_controller
    openstack_compute1>   puppet agent -t --certname openstack_compute1
    openstack_compute2>   puppet agent -t --certname openstack_compute2

## Verifying an OpenStack deployment

Once you have installed openstack using Puppet (and assuming you experience no
errors), the next step is to verify the installation:

### openstack::auth_file

The optionstack::auth_file class creates the puppet:

    /root/openrc

which stores environment variables that can be used for authentication of
openstack command line utilities.

#### Usage Example:

    class { 'openstack::auth_file':
      admin_password       => 'my_admin_password',
      controller_node      => 'my_controller_node',
      keystone_admin_token => 'my_admin_token',
    }

### Verification Process

  1. Ensure that your authentication information is stored in /root/openrc.
  This assumes that the class openstack::auth_file had been applied to this
  node.
  2. Ensure that your authenthication information is in the user's environment.

        source /root/openrc

  3. Verify that all of the services for nova are operational:

        > nova-manage service list
        Binary           Host          Zone   Status     State Updated_At
        nova-volume      <your_host>   nova   enabled    :-)   2012-06-06 22:30:05
        nova-consoleauth <your_host>   nova   enabled    :-)   2012-06-06 22:30:04
        nova-scheduler   <your_host>   nova   enabled    :-)   2012-06-06 22:30:05
        nova-compute     <your_host>   nova   enabled    :-)   2012-06-06 22:30:02
        nova-network     <your_host>   nova   enabled    :-)   2012-06-06 22:30:07
        nova-cert        <your_host>   nova   enabled    :-)   2012-06-06 22:30:04

  4. Ensure that the test script has been deployed to the node.

        file { '/tmp/test_nova.sh':
          source => 'puppet:///modules/openstack/nova_test.sh',
        }

  5. Run the test script.

        bash /tmp/test_nova.sh

    This script will verify that an image can be inserted into glance, and that
    that image can be used to fire up a virtual machine instance.

  6. Log into horizon on port 80 of your controller node and walk through a few
     operations:

     - fire up a VM
     - create a volume
     - attach that volume to the VM
     - allocate a floating IP address to a VM instance.
     - verify that voluem is actually attached to the VM and that
       it is reachable by its floating ip address (which will require
       some security groups)

## Building your own custom deployment scenario for Openstack

The classes included in the Openstack module are implemented using a number of
other modules. These modules can be used directly to create a customized
openstack deployment.

A list of the modules used by puppetlabs-openstack and the source locations for
those modules can be found in `other_repos.yaml` in the openstack module folder.

    other_repos.yaml

These building block modules have been written to support a wide variety of
specific configuration and deployment use cases. They also provide a lot of
configuration options not available with the more constrained
puppetlabs-openstack modules.

The manifests in the Openstack module can serve as an example of how to use
these base building block to compose custom deployments.

    <module_path>/openstack/manifests/{all,controller,compute}.pp

These files contain examples of how to deploy the following services:

* nova
  * api
  * scheduler
  * volumes
  * compute
  * network
* keystone
* glance
  * api
  * registry
* horizon
* database
  * examples only exist for Mysql and Sqlite (there is work underway for postgresql)
* message queue
  * examples currently only exist for rabbitmq

Once you have selected which services need to be combined on which nodes, you
should review the modules for all of these services and figure out how you can
configure things like the pipelines and back-ends for these individual services.

This information should then be used to compose your own custom site.pp

## Deploying swift

In order to deploy swift, you should use the example manifest that comes with
the swift modules (examples/site.pp)

In this example, the following nodes are specified:

* swift_proxy
  - used as the ringbuilder + proxy node
* swift_storage_1
  - used as a storage node
* swift_storage_2
  - used as a storage node
* swift_storage_3
  - used as a storage node

This swift configuration requires both a puppetmaster with storeconfigs enabled.

To fully configure a Swift environment, the nodes must be configured in the
following order:

* First the storage nodes need to be configured. This creates the storage
  services (object, container, account) and exports all of the storage endpoints
  for the ring builder into storeconfigs. (The replicator service fails to start
  in this initial configuration)
* Next, the ringbuild and swift proxy must be configured. The ringbuilder needs
  to collect the storage endpoints and create the ring database before the proxy
  can be installed. It also sets up an rsync server which is used to host the
  ring database.  Resources are exported that are used to rsync the ring
  database from this server.
* Finally, the storage nodes should be run again so that they can rsync the ring
  databases.

This configuration of rsync create two loopback devices on every node. For more
realistic scenarios, users should deploy their own volumes in combination with
the other classes.

Better examples of this will be provided in a future version of the module.

## Participating

Need a feature? Found a bug? Let me know!

We are extremely interested in growing a community of OpenStack experts and
users around these modules so they can serve as an example of consolidated best
practices of how to deploy openstack.

The best way to get help with this set of modules is to email the group
associated with this project:

  puppet-openstack@puppetlabs.com

Issues should be opened here:

  https://projects.puppetlabs.com/projects/openstack

The process for contributing code is as follows:

* fork the projects in github
* submit pull requests to the projects containing code contributions
    - rspec tests are preferred but not required with initial pull requests.
      I am happy to work with folks to help them get then up and going with
      rspec-puppet.

## Future features:

  efforts are underway to implement the following additional features:

  * Validate module on Fedora 17 and RHEL
  * monitoring (basic system and Openstack application monitoring support
    with Nagios/Ganglia and/or sensu)
  * Redundancy/HA - implementation of modules to support highly available and
    redundant Openstack deployments.
  * These modules are currently intended to be classified and data-fied in a
    site.pp. Starting in version 3.0, it is possible to populate class
    parameters explicitly using puppet data bindings (which use hiera as the
    back-end). The decision not to use hiera was primarily based on the fact
    that it requires explicit function calls in 2.7.x
  * Implement provisioning automation that can be used to fully provision
    an entire environment from scratch
  * Integrate with PuppetDB to allow service auto-discovery to simplify the
    configuration of service association
=======
#puppetlabs-openstack
Puppet Labs Reference and Testing Deployment Module for OpenStack.

Version 4.0.0 / 2014.1 / Icehouse

####Table of Contents

1. [Overview - What is the puppetlabs-openstack module?](#overview)
2. [A Note on Versioniong](#versioning)
2. [Module Description - What does the module do?](#module-description)
3. [Setup - The basics of getting started with OpenStack](#setup)
    * [Setup Requirements](#setup-requirements)
    * [Beginning with OpenStack](#beginning-with-openstack)
4. [Usage - Configuration and customization options](#usage)
    * [Hiera configuration](#hiera-configuration)
    * [Controller Node](#controller-node)
    * [Storage, Network, and Compute Nodes](#other-nodes)
5. [Reference - An under-the-hood peek at what the module is doing](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)
7. [License](#license)

##Overview

The puppetlabs-openstack module is used to deploy a multi-node, all-in-one, or swift-only installation of
OpenStack Icehouse.

##Versioning

This module has been given version 4 to track the puppet-openstack modules. The versioning for the
puppet-openstack modules are as follows:

```
Puppet Module :: OpenStack Version :: OpenStack Codename
2.0.0         -> 2013.1.0          -> Grizzly
3.0.0         -> 2013.2.0          -> Havana
4.0.0         -> 2014.1.0          -> Icehouse
5.0.0         -> 2014.2.0          -> Juno
```

##Module Description

Using the stable/icehouse branch of the puppet-openstack modules, puppetlabs-openstack allows
for the rapid deployment of an installation of OpenStack Icehouse. For the multi-node, up to five
types of nodes are created for the deployment:

* A controller node that hosts databases, message queues and caches, and most api services.
* A storage node that hosts volumes, image storage, and the image storage api.
* A network node that performs L2 routing, L3 routing, and DHCP services.
* A compute node to run guest operating systems.
* An optional Tempest node to test your deployment.

The all-in-one deployment sets up all of the services except for Swift on a single node,
including the Tempest testing.

The Swift deployment sets up:

* A controller node that hosts databases, message queues and caches, and the Swift API.
* Three storage nodes in different Swift Zones.

##Setup

###Setup Requirements

This module assumes nodes running on a RedHat 6 variant (RHEL, CentOS, or Scientific Linux),
on either Puppet Enterprise or Puppet. Ubuntu development is underway.

Each node needs a minimum of two network interfaces, and up to four.
The network interfaces are divided into two groups.

- Public interfaces:
  * API network.
  * External network.
- Internal interfaces:
  * Management network.
  * Data network.

This module have been tested with Puppet 3.5 and Puppet Enterprise. This module depends upon Hiera. Object
store support (Swift) depends upon exported resources and PuppetDB.

###Beginning with OpenStack

To begin, you will need to do some basic setup on the compute node. SElinux needs to be disabled
on the compute nodes to give OpenStack full control over the KVM hypervisor and other necessary 
services. This is the only node that SELinux needs to be disabled on.

Additionally, you need to know the network address ranges for all four of the public/private networks,
and the specific ip addresses of the controller node and the storage node. Keep in mind that your
public networks can overlap with one another, as can the private networks.

If you are running VMWare Fusion, and Vagrant with the Fusion provider, a CentOS 6.5 image is provided
to help you get started. It is stored in the Vagrant Cloud, and will be downloaded automatically.
See the examples/multinode and examples/allinone directories for details.

##Usage

###Hiera Configuration
The first step to using the puppetlabs-openstack module is to configure hiera with settings specific
to your installation. In this module, the example directory contains sample common.yaml (for multi-node)
and allinone.yaml (for all-in-one) files with all of the settings required by this module, as well as an
example user and networks to test your deployment with. These configuration options include network settings,
locations of specific nodes, and passwords for Keystone and databases. If any of these settings are
undefined or not properly set, your deployment may fail.

###Controller Node
For your controller node, you need to assign your node the controller role. For example:

```
node 'control.localdomain' {
  include ::openstack::role::controller
}
```

It's important to apply this configuration to the controller node before any of the other
nodes are applied. The other nodes depend upon the service and database setup in the controller
node.

###Other Nodes

For the remainder nodes, there are roles to assign for each. For example:
```
node 'storage.localdomain' {
  include ::openstack::role::storage
}

node 'network.localdomain' {
  include ::openstack::role::network
}

node /compute[0-9]+.localdomain/ {
  include ::openstack::role::compute
}
```

For this deployment, it's assumed that there is only one storage node and one network
node. There may be multiple compute nodes.

After applying the configuration to the controller node, apply the remaining
configurations to the worker nodes. 

You will need to reboot all of the nodes after installation to ensure that the kernel
module that provides network namespaces, required by Open VSwitch, is loaded.

### Object Store Nodes

Begin by setting up PuppetDB. The easiest way to do this is to use the module provided
by Puppet Labs. The module only needs to be installed on the master, and should be
used after the agent on the master has connected to itself. For example, you can do a
complete installation with the following commands:

```
# connect the puppet master to itself for a first run

sudo puppet agent -t

# install the PuppetDB module
sudo puppet module install puppetlabs/puppetdb

# install the module on the puppet master node
sudo puppet apply --modulepath /etc/puppet/modules -e \"class { '::puppetdb': listen_address => '0.0.0.0', ssl_listen_address => '0.0.0.0' } class { 'puppetdb::master::config': puppetdb_server => 'puppet'}\""
```

You will need to create three nodes as object stores for Swift, assigning three zones:

```
node /swift[0-9]+zone1.localdomain/ {
  class { '::openstack::role::swiftstorage':
    zone => '1',
  }

node /swift[0-9]+zone2.localdomain/ {
  class { '::openstack::role::swiftstorage':
    zone => '2',
  }

node /swift[0-9]+zone3.localdomain/ {
  class { '::openstack::role::swiftstorage':
    zone => '3',
  }
```

Because of the use of exported resources, puppet will need multiple runs to converge. First run the Puppet Agent
on all of the Swift nodes, which will build out the basic storage and store the exported resource information
in PuppetDB. Then run the agent on the control node, which will build out the ring files required by Swift.
Finally, run Puppet against the Swift storage nodes again to copy the ring files over and successfully start
the Swift services.

##Reference

The puppetlabs-openstack module is built on the 'Roles and Profiles' pattern. Every node
in a deployment is assigned a single role. Every role is composed of some number of
profiles, which ideally should be independent of one another, allowing for composition
of new roles. The puppetlabs-openstack module does not strictly adhere to this pattern,
but should serve as a useful example of how to build profiles from modules for customized
and maintainable OpenStack deployments.

##Limitations

* High availability and SSL-enabled endpoints are not provided by this module.

Addressing these limitations is planned for a forthcoming release of the puppetlabs-openstack module.

##License
Puppet Labs OpenStack - A Puppet Module for a Multi-Node OpenStack Icehouse Installation.

Copyright (C) 2013, 2014 Puppet Labs, Inc. and Authors

Original Author - Christian Hoge

Puppet Labs can be contacted at: info@puppetlabs.com

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
