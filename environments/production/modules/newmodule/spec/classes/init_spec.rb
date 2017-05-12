require 'spec_helper'
describe 'newmodule' do
  context 'with default values for all parameters' do
    it { should contain_class('newmodule') }
  end
end
