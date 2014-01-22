require 'spec_helper'

# Ensures that smartdc guest tools are installed
describe file('/lib/smartdc') do
  it { should be_directory }
end

describe file('format-secondary-disk') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('joyent_rc.local') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('lib_smartdc_scripts.cfg') do
  it { should be_file }
  it { should be_mode 644 }
end

describe file('product') do
  it { should be_file }
  it { should be_mode 644 }
end

describe file('redhat-powerbtn-acpi-support.sh') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('run-operator-script') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('run-user-script') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('send-arp-updates') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('set-root-authorized-keys') do
  it { should be_file }
  it { should be_mode 755 }
end

## Ensure the appropriate smartdc guest tools are run each boot
# First, make sure the appropriate symlink is there
describe file('/etc/rc.local') do
  it { should be_file }
  it { should be_mode 755 }
  it { should be_linked_to '/etc/rc.d/rc.local' }
end

# Check to seek if guest tools are run at boot
describe file('/etc/rc.d/rc.local') do
  it { should be_file }
  it { should be_mode 755 }
  it { should contain "(/lib/smartdc/joyent_rc.local)" }
end


# Since 2.5.1 See IMAGE-426.
# Make sure new guest tools are installed
describe file('/usr/sbin/mdata-get') do
  it { should be_file }
	it { should be_mode 755 }
end

describe file('/usr/sbin/mdata-list') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/usr/sbin/mdata-put') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/usr/sbin/mdata-delete') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/lib/smartdc/mdata-get') do
	it { should be_file }
	it { should be_linked_to '/usr/sbin/mdata-get' }
end

