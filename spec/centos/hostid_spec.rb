require 'spec_helper'

# Ensure the hostid value is unique. See IMAGE-441.
describe command('hostid') do
  its(:stdout) { should_not eq "00000000" }
end

describe file('/etc/hostid') do
	it { should be_file }
end
