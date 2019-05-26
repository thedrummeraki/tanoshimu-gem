require_relative 'spec_helper'

RSpec.describe Tanoshimu do
  describe 'VERSION' do
    it 'exists' do
      expect(Tanoshimu::VERSION.class).to be(String)
    end
    it 'is valid' do
      expect(Tanoshimu::VERSION).to match(/\A(\d+\.)?(\d+\.)?(\*|\d+)\z/)
    end
  end
end
