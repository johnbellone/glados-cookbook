#
# Cookbook: glados
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
include_recipe 'clojure-service::default'

poise_service_user node['glados']['service_user'] do
  group node['glados']['service_group']
end

service_name = node['glados']['service_name']

clojure_config service_name do |r|
  owner node['glados']['service_user']
  group node['glados']['service_group']

  node['glados']['config'].each_pair { |k, v| r.send(k, v) }
  notifies :restart, "clojure_service[#{service_name}]", :delayed
end

clojure_service service_name do |r|
  user node['glados']['service_user']
  group node['glados']['service_group']
  config_path node['glados']['config']['path']

  node['glados']['config'].each_pair { |k, v| r.send(k, v) }
end
