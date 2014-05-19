require 'spec_helper'
require 'puppet/provider/f5'
require 'ostruct'

describe Puppet::Provider::F5::F5_ceritificate do
  let(:f5_prov_obj) { Puppet::Provider::F5::F5_certificate.new }

  number_tests = [
    {:'32' => "1234",
     :'64' => {:high => 0x0, :low => 0x4D2}},
    {:'32' => "555896254785628",
     :'64' => {:high => 0x1F995, :low => 0xAECC685C}},
  ]

  describe "to_32h method" do
    number_tests.each do |entry|
      it "should convert #{entry[:'32']} to #{entry[:'64'].inspect}" do
        f5_prov_obj.to_32h(entry[:'32']).should == entry[:'64']
      end
    end
  end

end
