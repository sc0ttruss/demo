#
# Cookbook Name:: build-cookbook
# Recipe:: provision
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'delivery-truck::provision'

# # See https://github.com/chef/chef-provisioning#machine-options for options shared between drivers
# # See http://docs.aws.amazon.com/sdkforruby/api/Aws/EC2/Resource.html#create_instances-instance_method
# # See https://docs.chef.io/resource_machine.html
#
# with_driver 'aws'
#
# with_machine_options({
#   # convergence_options: {
#   #   chef_server: "https://chef.myorg.chefdemo.net/organizations/myorg",
#   #   allow_overwrite_keys: true
#   # },
#   bootstrap_options: {
#     image_id: "ami-123456", # CentOS 6 with EBS
#     instance_type: "t2.medium",
#     key_name: "rnixon",
#   },
#   # use_private_ip_for_ssh: false, # DEPRECATED, use `transport_address_location`
#   transport_address_location: :public_ip,
#   placement: {
#     availability_zone: "ap-southeast-2",
#     group_name: "String",
#     tenancy: "default"
#   },
#   subnet_id: "subnet-c123456",
#   security_groups: ["nyorgChefServersSG"],
#   block_device_mappings: [
#     {
#       virtual_name: "sda1",
#       device_name: "/dev/sda1",
#       ebs: {
#         volume_size: 40,
#         delete_on_termination: true,
#         volume_type: "gp2", # accepts standard, io1, gp2
#       },
#     },
#   ],
# })
#
# with_chef_server "https://chef.myorg.chefdemo.net/organizations/myorg",
#   client_name:          "delivery",
#   signing_key_filename: "/var/opt/delivery/workspace/.chef/delivery.pem"
#
# machine "acceptance.demo.myorg.chefdemo.net" do
#   recipe            "push-jobs"
#   recipe            "demo"
#   chef_environment  "acceptance-myorg-demo-demo-master"
#   action            :converge
# end
