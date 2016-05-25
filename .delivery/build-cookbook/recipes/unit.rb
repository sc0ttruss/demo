#
# Cookbook Name:: build-cookbook
# Recipe:: unit
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


# Dont use 'delivery-truck::unit' as it doesn't display the rspec results
# Use this instead
changed_cookbooks.each do |cookbook|
  rspec_unit = Mixlib::ShellOut.new("rspec --format documentation --color --tty",{cwd: cookbook.path})
  rspec_unit.run_command
  Chef::Log.warn "\n#{rspec_unit.stdout}"
  rspec_unit.error!
end
