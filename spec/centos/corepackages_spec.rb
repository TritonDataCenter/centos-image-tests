require 'spec_helper'

describe package('acpid') do
  it { should be_installed }
end

describe package('duo_unix') do
  it { should be_installed }
end

describe package('libduo') do
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

describe package('pam_duo') do
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
