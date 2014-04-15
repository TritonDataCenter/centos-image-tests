require 'spec_helper'

# Make sure ssh login is via ssh key only. This is required since we are enabling
# a password for root per IMAGE-459
if attr[:version].delete('.').to_i >= 261
  describe file('/etc/ssh/sshd_config') do
    it { should be_file }
    it { should contain "PasswordAuthentication no" }
  end
end