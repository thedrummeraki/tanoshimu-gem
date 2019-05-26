require_relative 'spec_helper'

# Set the production URL first
ActiveResource::Base.site = 'https://anime.akinyele.ca/api/v1'

RSpec.describe Tanoshimu::Show do
  describe 'no token' do
    it 'throws a forbidden access error' do
      Tanoshimu::Show.connection.bearer_token = nil
      expect { Tanoshimu::Show.find(:all) }.to raise_error(ActiveResource::ForbiddenAccess)
    end
  end

  describe 'with demo token' do
    it 'returns all shows' do
      Tanoshimu::Show.connection.bearer_token = 'demo'
      expect{ Tanoshimu::Show.find(:all) }.not_to raise_error
    end

    describe 'one show' do
      it 'has an array of episodes' do
        show = Tanoshimu::Show.last
        expect(show).not_to be_nil
        expect(show.episodes.size > 0).to be_truthy
      end
    end
  end
end
