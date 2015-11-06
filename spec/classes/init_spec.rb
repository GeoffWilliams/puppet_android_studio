require 'spec_helper'
describe 'android_studio' do

  context 'with defaults for all parameters' do
    it { should contain_class('android_studio') }
  end
end
