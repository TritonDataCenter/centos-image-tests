require 'spec_helper'

# Files that should be installed

describe file('/etc/product') do
	it { should be_file }
	it { should contain "Name: Joyent Instance" }
	it { should contain "Image: #{attr[:name]} #{attr[:version]}" }
	it { should contain "Documentation: #{attr[:doc_url]}" }
end

