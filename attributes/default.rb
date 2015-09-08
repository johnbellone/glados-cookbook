#
# Cookbook: glados
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
default['glados']['service_user'] = 'glados'
default['glados']['service_group'] = 'glados'
default['glados']['service_name'] = 'glados'

default['glados']['config']['path'] = '/etc/glados.edn'

default['glados']['service']['version'] = '0.1.0-SNAPSHOT'
