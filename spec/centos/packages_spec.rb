require 'spec_helper'

describe package('acpid') do
  it { should be_installed }
end

describe package('epel-release') do
  it { should be_installed }
end


describe package('iputils') do
  it { should be_installed }
end

if property[:name].include? "CentOS 6"
	describe package('man') do
  	it { should be_installed }
	end
else
	describe package('man-db') do
  	it { should be_installed }
	end
end

describe package('nodejs') do
  it { should be_installed }
end

describe package('ntp') do
  it { should be_installed }
end

describe package('ntpdate') do
  it { should be_installed }
end

# The openssh-clients package is not installed as part of a minimal
# CentOS 6 install. Without it, scp is not available.
# Let's make sure the pacakge is installed :)
describe package('openssh-clients') do
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
