require 'spec_helper'

# Ensure the hostid value is unique. See IMAGE-441.
describe command('hostid') do
  it { should_not return_stdout "00000000" }
end

describe file('/etc/hostid') do
	it { should be_file }
end
