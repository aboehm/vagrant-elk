# Vagrant environment for ELK 

## Overview

A template for a Vagrant environment for ELK stack (debian based).

## Usage

### Basic setup

The `Vagrantfile` contains following constants

* `USE_GUI`: Headless or GUI mode. Default: headless. 
* `VM_CPUS`: Number of virtual CPU cores. Default: 2.
* `VM_IP`: Host-only-IP address. Leave empty to disable. Default: 172.16.1.2.
* `VM_RAM`: RAM size in Megabytes. Default: 4096.
* `VM_SYNC_TYPE`: Sychronisation method of folders. Default: rsync. (see
   https://www.vagrantup.com/docs/synced-folders/basic_usage.html)
* `DEB_PROXY`: Url of a apt proxy. Empty if no proxy used (default).

### Running

To install and startup

```
git clone https://github.com/aboehm/vagrant-elk
cd vagrant-elk
vagrant plugin install vagrant-reload
vagrant up
```

After installation following services are available:

* `http://172.16.1.2:5601`: Kibana
* `http://172.16.1.2:9200`: Elasticsearch
* `172.16.1.2:10514`: Syslog (RFC3164/5424) logstash server with cee-support.

## License

Copyright (C) 2016 Alexander Böhm <alxndr.boehm@gmail.com> 

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

