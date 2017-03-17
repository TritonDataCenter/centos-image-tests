require 'spec_helper'

describe file('/var/tmp/user-script') do
  it { should be_file }
  it { should be_owned_by 'root' }
end

describe file('/var/tmp/user-script.lock') do
  it { should be_file }
  it { should be_owned_by 'root' }
end

describe file('/var/tmp/test') do
  it { should be_file }
end
