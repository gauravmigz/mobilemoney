# copyright: 2018, The Authors

#title "sample section"

# you can also use plain tests
#describe file("/tmp") do
#  it { should be_directory }
#end

# you add controls here
#control "tmp-1.0" do                        # A unique ID for this control
#  impact 0.7                                # The criticality, if this control fails.
#  title "Create /tmp directory"             # A human-readable title
#  desc "An optional description..."
#  describe file("/tmp") do                  # The actual test
#    it { should be_directory }
#  end
#end

control "tmp-1.0" do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title " DHCP client"             # A human-readable title
  desc "Check DHCP CLient..."
  describe service('DHCP') do
    it{ should be_installed }
    it{ should be_running }
  end
end

control "tmp-2.0" do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title "CAM"             # A human-readable title
  desc "Check CAM"
  describe audit_policy do
    its('User Account Management') { should eq 'Success' }
  end
end
