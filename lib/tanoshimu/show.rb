module Tanoshimu
  class Show < ActiveResource::Base
    def episodes
      Episode.all(params: {show_id: id})
    end
  end
end

require_relative 'show/episode'
