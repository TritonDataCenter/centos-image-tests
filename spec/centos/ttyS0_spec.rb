require 'spec_helper'

# Ensure CentOS 6 images have an agetty service on ttyS0
#
# Note: With CentOS 7, systemd enables the service automatically
# when you add console=ttyS0 on the kernel command line
# http://0pointer.de/blog/projects/serial-console.html
if property[:name].include? "CentOS 6"
  describe file('/etc/init/ttyS0.conf') do
    it { should be_file }
    it { should contain "stop on runlevel [S016]" }
    it { should contain "start on runlevel [23]" }
    it { should contain "respawn" }
    it { should contain "exec agetty -h -L -w /dev/ttyS0 115200 vt102" }
  end
end

