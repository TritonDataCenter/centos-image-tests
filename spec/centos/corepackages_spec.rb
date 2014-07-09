require 'spec_helper'

# Make sure we have the latest openssl to address HeartBleed bug
# IMAGE-481
if attr[:version].to_i < 20140709
	describe package('openssl-1.0.1e-16.el6_5.7') do
  	it { should be_installed }
	end
end

describe package('acpid') do
  it { should be_installed }
end

describe package('iputils') do
  it { should be_installed }
end

describe package('man') do
  it { should be_installed }
end

describe package('me-centos') do
  it { should be_installed }
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
