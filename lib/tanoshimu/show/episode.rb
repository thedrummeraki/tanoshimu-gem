module Tanoshimu
  class Show::Episode < ActiveResource::Base
    self.prefix = '/api/v1/shows/:show_id/'
  end
end
