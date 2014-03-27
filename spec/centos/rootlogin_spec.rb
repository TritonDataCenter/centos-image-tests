require 'spec_helper'

# Ensure root password is set and password matches value in metadata
# Need to somehow validate that it's not the same as livecd and that
# it matches value from mdata-get

# Make sure default live-build password is not set
# We want to explicitly test for this first to ensure the default password from
# the live-build is not leaking through.
describe command("cat /etc/shadow | grep root | awk -F':' '{print $2;}'") do
  it { should_not return_stdout "$1$qHFOhAjw$AjgoyfS8u32uqV8qsL1r70" }
end

# Make sure a root password is set. See IMAGE-459
describe command("cat /etc/shadow | grep root | awk -F':' '{print $2;}'") do
  it { should_not return_stdout "" }
end

# Make sure ssh login is via ssh key only. This is required since we are enabling
# a password for root per IMAGE-459
describe file('/etc/ssh/sshd_config') do
  it { should be_file }
  it { should contain "PasswordAuthentication no" }
end
