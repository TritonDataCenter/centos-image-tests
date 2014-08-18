require 'spec_helper'

# Tests to validate network and interfaces are properly configured 

# Make sure we cang ping out etc. 
describe host('google.com') do
	it { should be_reachable }
  it { should be_resolvable }
end

# With newer builds using sdc-vmtools these files are always created at boot
# Also, you would not be able to test the VM at all if they werent' there.
if property[:version].to_i  < 20140818
describe file('/etc/sysconfig/network-scripts/ifcfg-eth0') do
	it { should be_file }
  it { should contain 'DEVICE="eth0"' }
	it { should contain 'ONBOOT="yes"' }
	it { should contain 'BOOTPROTO="dhcp"' }
end

describe file('/etc/sysconfig/network-scripts/ifcfg-eth1') do
  it { should be_file }
  it { should contain 'DEVICE="eth1"' }
  it { should contain 'ONBOOT="yes"' }
  it { should contain 'BOOTPROTO="dhcp"' }
end
end
