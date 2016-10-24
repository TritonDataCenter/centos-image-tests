require 'spec_helper'

# Test to ensure image is not vulnerable to CVE-2016-5195
# Via: https://access.redhat.com/security/vulnerabilities/2706661

describe command("curl --silent --location https://access.redhat.com/sites/default/files/rh-cve-2016-5195_1.sh | bash -") do
  its(:stdout) { should_not match /IS vulnerable/ }
  its(:exit_status) { should eq 0 }
end
