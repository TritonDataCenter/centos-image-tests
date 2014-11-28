require 'spec_helper'

# CentOS 7 hase newer Grub
if property[:name] != "CentOS 7.0-1406"
	describe file('/etc/grub.conf') do
		it { should be_file }
		it { should contain "tsc=reliable" }
  	it { should contain "divider=10" }
  	it { should contain "timeout=5" }
    it { should contain "console=ttyS0,115200n8 console=tty0" }
	end
else
	describe file('/etc/default/grub') do
  	it { should be_file }
  	it { should contain "tsc=reliable" }
  	it { should contain "divider=10" }
  	it { should contain "GRUB_TIMEOUT=5" }
    it { should contain "console=ttyS0" } 
	end
end
