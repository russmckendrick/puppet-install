# Install Puppet

## Master

A quick one liner to install and configure a puppet master. This assumes a FDQN host name and clean CentOS / RHEL build;

```bash
curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/install | bash
```


## Agent

A quick one liner to install and configure a puppet agent. This assumes a FDQN host name and clean CentOS / RHEL build, make sure you pass the script details of your Puppet Master;

```bash
curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/agent | bash -s puppet.master.com
```
