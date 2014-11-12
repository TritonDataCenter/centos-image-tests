require 'spec_helper'

# Tests to ensure ntp is locked down 

describe file('/etc/ntp.conf') do
  it { should be_file }
	it { should contain "restrict default kod nomodify notrap nopeer noquery" }
	it { should contain "restrict -6 default kod nomodify notrap nopeer noquery" }
  it { should contain "restrict 127.0.0.1" }
  it { should contain "restrict -6 ::1" }
end

