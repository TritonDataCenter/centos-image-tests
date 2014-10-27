require 'spec_helper'

describe service('acpid') do
	it { should be_enabled }
end

describe service('crond') do
  it { should be_enabled }
end

describe service('auditd') do
  it { should be_enabled }
end

describe service('rsyslog') do
  it { should be_enabled }
end

describe service('sshd') do
  it { should be_enabled }
end

describe service('ntpd') do
  it { should be_enabled }
end

describe service('ntpdate') do
  it { should be_enabled }
end
