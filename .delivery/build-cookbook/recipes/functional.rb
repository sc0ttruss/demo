#
# Cookbook Name:: build-cookbook
# Recipe:: functional
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# delivery-truck has no functional tests so we will write our own here

# Determine which host to test against
case delivery_environment
  when /^acceptance-.*/
    target_node = 'acceptance01.myorg.chefdemo.net'
  else
    target_node = "#{delivery_environment}01.myorg.chefdemo.net"
  end

# Execute a simple cURL for now
execute "Pull the index page from #{target_node}" do
  command "curl http://#{target_node}"
end
