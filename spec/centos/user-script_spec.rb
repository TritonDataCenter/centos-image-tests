require 'spec_helper'

describe file('/var/run/smartdc/user-script') do
	it { should be_file }
  it { should be_owned_by 'root' }
end

describe file('/var/lock/smartdc/user-script.lock') do
  it { should be_file }
  it { should be_owned_by 'root' }
end

describe file('/var/tmp/test') do
  it { should be_file }
end
