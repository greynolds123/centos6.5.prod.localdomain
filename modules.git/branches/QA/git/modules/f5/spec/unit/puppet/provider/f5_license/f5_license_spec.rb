require 'spec_helper'
require 'puppet/provider/f5'

def license_fixture(filename)
  File.read(fixtures('license', filename))
end

provider = Puppet::Type.type(:f5_license).provider(:f5_license)
transport = Puppet::Util::NetworkDevice::F5::Device

describe Puppet::Provider::F5 do
#  @resource = stub "resource", :name => "license"
  let(:f5_license) { Puppet::Provider::F5_license.new }

  before :each do
    device = mock(Puppet::Util::NetworkDevice::F5::Device)
  end

  describe "should return license file" do
  end
end
