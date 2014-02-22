#!/bin/bash
#
# See - https://github.com/russmckendrick/puppet-install
#
yum install -y http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-6.noarch.rpm http://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm vim-enhanced
yum -y install puppet
mkdir -p /tmp/modules
puppet module install stephenrjohnson/puppet --modulepath=/tmp/modules
puppet apply --modulepath=/tmp/modules --execute "class{'::puppet::master':}"