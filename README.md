# Install Puppet

## Master

A quick one liner to install and configure puppetserver on an CentOS server. This assumes a FDQN host name and clean CentOS / RHEL build;

```bash
curl -fsS https://raw.githubusercontent.com/russmckendrick/puppet-install/master/install | bash
```

This script will not touch any firewall rules, to open up port 8140 on an EL7 server run;

```bash
firewall-cmd --permanent --zone=public --add-port=8140/tcp
systemctl restart firewalld.service
```

## Agent

A quick one liner to install and configure a puppet agent. This assumes a FDQN host name and clean CentOS / RHEL build, make sure you pass the script details of your Puppet Master;

```bash
curl -fsS https://raw.githubusercontent.com/russmckendrick/puppet-install/master/agent | bash -s puppet.master.com
```