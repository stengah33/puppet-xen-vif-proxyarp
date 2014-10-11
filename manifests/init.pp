# == Class: xen-vif-proxyarp
#
# Puppet module enabling Proxy ARP vif mode in Xen
#
# === Examples
#
#  include xen-vif-proxyarp
#
# === Authors
#
# stengah33 <stengah33@gmail.com>
#
# === Copyright
#
# Copyright 2014 stengah33
#
class xen-vif-proxyarp {
  git::repo{'xen-vif-proxyarp':
    path   => '/tmp/tmp-8bsdf-xen-vif-proxyarp',
    source => 'http://github.com/stengah33/xen-vif-proxyarp.git',
  }
  file{'xen-vif-proxyarp':
    ensure => present,
    source => '/tmp/tmp-8bsdf-xen-vif-proxyarp/vif-proxyarp',
    path => '/etc/xen/scripts/vif-proxyarp',
    require => Git::Repo['xen-vif-proxyarp'],
  }
}
