require 'spec_helper'

if attr[:version].to_i  < 20140818
	describe file('/var/run/smartdc/user-script') do
		it { should be_file }
  	it { should be_owned_by 'root' }
	end
else
  describe file('/var/tmp/user-script') do
    it { should be_file }
    it { should be_owned_by 'root' }
  end
end

if attr[:version].to_i  < 20140818
	describe file('/var/lock/smartdc/user-script.lock') do
  	it { should be_file }
  	it { should be_owned_by 'root' }
	end
else
  describe file('/var/tmp/user-script.lock') do
    it { should be_file }
    it { should be_owned_by 'root' }
  end
end

describe file('/var/tmp/test') do
  it { should be_file }
end
