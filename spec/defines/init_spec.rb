require 'spec_helper'
describe 'android_studio', :type => :define do

  context 'should compile on Ubuntu' do
    let :facts do
      {
        :operatingsystem => "Ubuntu",
      }
    end
    let :title do
      "test_user"
    end
    it { should compile }
  end
end
