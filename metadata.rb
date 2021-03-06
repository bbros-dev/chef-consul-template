name             'consul-template'
maintainer       'Adam Krone'
maintainer_email 'krone.adam@gmail.com'
license          'Apache-2.0'
description      'Installs/Configures consul-template'
long_description 'Installs/Configures consul-template'
version          '0.15.0'

recipe 'consul-template', 'Installs, configures, and starts the consul-template service.'
recipe 'consul-template::install_binary', 'Installs consul-template from binary.'
recipe 'consul-template::install_source', 'Installs consul-template from source.'
recipe 'consul-template::service', 'Configures and starts the consul-template service.'

supports 'ubuntu', '>= 14.04'
supports 'debian', '>= 8.9'
supports 'centos', '>= 6.9'

depends 'golang'
depends 'runit'
depends 'nssm'

issues_url 'https://github.com/adamkrone/chef-consul-template/issues' if respond_to?(:issues_url)
source_url 'https://github.com/adamkrone/chef-consul-template' if respond_to?(:source_url)
chef_version '>= 12.21.2' if respond_to?(:chef_version)
