require 'spec_helper'

# product
describe file('/var/lock/subsys') do
	it { should be_directory }
end

describe file('/var/lock/subsys/local') do
  it { should be_file }
end
