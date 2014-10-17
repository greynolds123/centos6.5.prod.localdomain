<<<<<<< HEAD
# Puppet HAProxy

## Build status

[![Build Status](https://travis-ci.org/arioch/puppet-haproxy.png?branch=master)](https://travis-ci.org/arioch/puppet-haproxy)

## Requirements

* [concat module](https://github.com/ripienaar/puppet-concat)
* [stdlib module](https://github.com/puppetlabs/puppetlabs-stdlib)

## Tested on...

* Debian 6 (Squeeze)
* Debian 7 (Wheezy)

## Example usage

### Install HAProxy

    node /box/ {
      include haproxy
    }

### Adjust configuration settings

    node /box/ {
      class { 'haproxy':
        defaults_maxconn => '32768',
        global_chroot    => '/usr/share/haproxy',
        global_nbproc    => '2',
        global_ulimit    => '65548',
      }
    }

### Create split frontend instance

    haproxy::instance { 'http-in':
      instance        => 'frontend',
      bind            => '*:80',
      default_backend => 'pool1',
    }

### Create split frontend instance, with ACL

    haproxy::instance { 'http-in':
      instance        => 'frontend',
      bind            => '*:80',
      default_backend => 'pool1',
      acl             => 'acl_pool1',
      acl_header      => 'example.org',
      acl_backend     => 'pool1',
    }

### Create split backend instance

    haproxy::instance { 'pool1':
      instance => 'backend',
      balance  => 'roundrobin',
      option   => [ 'http-server-close', 'checkcache' ],
      server   => [
        'inst1 10.0.1.10:80'
        'inst2 10.0.1.20:80'
      ],
    }

### Create combined listen instance

    haproxy::instance { 'pool2':
      instance => 'listen',
      bind     => '0.0.0.0:80',
      mode     => 'http',
      option   => 'persist',
      balance  => 'roundrobin',
      server   => [
        'inst1 10.0.2.10:80',
        'inst2 10.0.2.20:80',
      ],
    }

### Enable HAProxy stats page

    class { 'haproxy':
      stats_enable         => true,
      stats_listen_address => '0.0.0.0',
      stats_listen_port    => '8000',
    }

### Enable HAProxy stats page with authentication

    class { 'haproxy':
      stats_enable      => true,
      stats_auth_enable => true,
      stats_auth_user   => 'haproxy',
      stats_auth_pass   => 'haproxy',
    }


## Unit testing

Plain RSpec:

    $ rake spec

Using bundle:

    $ bundle exec rake spec

Test against a specific Puppet or Facter version:

    $ PUPPET_VERSION=3.2.1  bundle update && bundle exec rake spec
    $ PUPPET_VERSION=2.7.19 bundle update && bundle exec rake spec
    $ FACTER_VERSION=1.6.8  bundle update && bundle exec rake spec

=======
# haproxy

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with haproxy](#setup)
    * [What haproxy affects](#what-haproxy-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with haproxy](#beginning-with-haproxy)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

A one-maybe-two sentence summary of what the module does/what problem it solves.
This is your 30 second elevator pitch for your module. Consider including
OS/Puppet version it works with.

## Module Description

If applicable, this section should have a brief description of the technology
the module integrates with and what that integration enables. This section
should answer the questions: "What does this module *do*?" and "Why would I use
it?"

If your module has a range of functionality (installation, configuration,
management, etc.) this is the time to mention it.

## Setup

### What haproxy affects

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

### Beginning with haproxy

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You may also add any additional sections you feel are
necessary or important to include here. Please use the `## ` header.
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
