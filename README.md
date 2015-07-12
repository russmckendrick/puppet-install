# Install Puppet

## Server

A quick one liner to install and configure Puppet Server on a RHEL / CentOS server. This assumes a FDQN host name and clean RHEL / CentOS build;

```bash
curl -fsS https://raw.githubusercontent.com/russmckendrick/puppet-install/master/install | bash
```

This script will not touch any firewall rules, to open up port 8140 on an EL7 server run;

```bash
firewall-cmd --permanent --zone=public --add-port=8140/tcp
systemctl restart firewalld.service
```

## Agent

A quick one liner to install and configure a puppet agent. This assumes a FDQN host name and clean RHEL / CentOS build, make sure you pass the script the hostname of your Puppet Server at the end;

```bash
curl -fsS https://raw.githubusercontent.com/russmckendrick/puppet-install/master/agent | bash -s puppet.master.com
```
