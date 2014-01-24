require 'spec_helper'

# Kernel tuning
# Tune Linux vm.dirty_background_bytes (IMAGE-439)

describe file('/etc/sysctl.conf') do
	it { should be_file }
  it { should contain "vm.dirty_background_bytes=100000000" }
end


