require 'spec_helper'

describe 'demo::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe service('httpd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe service('iptables') do
    it { should_not be_enabled }
    it { should_not be_running }
  end


end
