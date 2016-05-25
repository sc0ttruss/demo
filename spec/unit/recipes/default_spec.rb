#
# Cookbook Name:: demo
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'demo::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs apache' do
      expect(chef_run).to install_package('httpd')
    end

    it 'starts and enables apache' do
      expect(chef_run).to start_service('httpd')
      expect(chef_run).to enable_service('httpd')
    end

    it 'stops and disables iptables' do
      expect(chef_run).to stop_service('iptables')
      expect(chef_run).to disable_service('iptables')
    end

  end
end
