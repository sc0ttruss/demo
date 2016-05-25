#
# Cookbook Name:: demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
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
