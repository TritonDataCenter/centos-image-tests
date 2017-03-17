require 'spec_helper'

# Tests to validate network and interfaces are properly configured 

# Make sure we cang ping out etc. 
describe host('google.com') do
	it { should be_reachable }
  it { should be_resolvable }
end
