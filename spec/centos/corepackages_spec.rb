require 'spec_helper'

# Make sure we have the latest openssl to address HeartBleed bug
# IMAGE-481
if attr[:version].to_i < 20140709
	describe package('openssl-1.0.1e-16.el6_5.7') do
  	it { should be_installed }
	end
end

# Ensure latest availabe version of OpenSSL is installed
# This will thow an error if openssl is newer but I want
# to be explitily warned if teh version does not match
# in future image versions.
if attr[:version].to_i >= 20140710
  describe package('openssl-1.0.1e-16.el6_5.14') do
    it { should be_installed }
  end
end

describe package('acpid') do
  it { should be_installed }
end

describe package('iputils') do
  it { should be_installed }
end

if attr[:name] != "CentOS 7.0-1406"
	describe package('man') do
  	it { should be_installed }
	end
else
	describe package('man-db') do
  	it { should be_installed }
	end
end

# We use install sdc-vmtools in newer versions rather than the rpm package
if attr[:version].to_i  < 20140818
	describe package('me-centos') do
  	it { should be_installed }
	end
end
describe package('ntp') do
  it { should be_installed }
end

describe package('ntpdate') do
  it { should be_installed }
end

describe package('parted') do
  it { should be_installed }
end

describe package('vim-common') do
  it { should be_installed }
end

describe package('vim-enhanced') do
  it { should be_installed }
end

describe package('vim-minimal') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end
