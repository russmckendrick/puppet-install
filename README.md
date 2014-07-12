# Install Puppet

## Master

A quick one liner to install and configure a puppet master. This assumes a FDQN host name and clean CentOS / RHEL build;

### EL6

```bash
curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/install | bash
```

### EL7

```bash
curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/install-el7 | bash
```


## Agent

A quick one liner to install and configure a puppet agent. This assumes a FDQN host name and clean CentOS / RHEL build, make sure you pass the script details of your Puppet Master;

### EL6

```bash
curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/agent | bash -s puppet.master.com
```

### EL7

```bash
curl -fsS https://raw2.github.com/russmckendrick/puppet-install/master/agent-el7 | bash -s puppet.master.com
```