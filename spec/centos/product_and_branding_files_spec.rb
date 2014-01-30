require 'spec_helper'

# Files that should be installed

# product
describe file('/etc/product') do
	it { should be_file }
	it { should contain "Name: Joyent Instance" }
	it { should contain "Image: #{attr[:name]} #{attr[:version]}" }
	it { should contain "Documentation: #{attr[:doc_url]}" }
end

# MOTD
describe file('/etc/motd') do
  it { should be_file }
  it { should contain "Instance (#{attr[:name]} #{attr[:version]}" }
  it { should contain "#{attr[:doc_url]}" }
	it { should be_linked_to '/etc/motd.joyent' }
end

describe file('/etc/issue') do
  it { should be_file }
  it { should be_linked_to '/etc/motd.joyent' }
end

describe file('/etc/issue.net') do
  it { should be_file }
  it { should be_linked_to '/etc/motd.joyent' }
end
