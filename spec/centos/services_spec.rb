require 'spec_helper'

if property[:name] != "CentOS 7.0-1406"
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
end
