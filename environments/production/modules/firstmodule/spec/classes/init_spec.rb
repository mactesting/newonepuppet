require 'spec_helper'
describe 'firstmodule' do
  context 'with default values for all parameters' do
    it { should contain_class('firstmodule') }
  end
end
