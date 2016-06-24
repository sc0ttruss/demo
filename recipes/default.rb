#
# Cookbook Name:: demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
  notifies :restart, 'service[httpd]'
end

template '/var/www/index.html' do
  source 'index.html.erb'
  mode '755'
end

service 'httpd' do
  action [ :enable, :start ]
end

service 'iptables' do
  action [ :disable, :stop ]
end

package 'ntp' do
  action :install
end

service 'ntpd' do
  action [ :enable, :start ]
end
