require 'spec_helper'
describe 'one' do
  context 'with default values for all parameters' do
    it { should contain_class('one') }
  end
end
