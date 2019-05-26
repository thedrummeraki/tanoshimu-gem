require 'dotenv/load'
require 'activeresource'

module Tanoshimu
  ::ActiveResource::Base.site = ENV.fetch('TANOSHIMU_URL') { 'https://anime.akinyele.ca/api/v1' }
  ::ActiveResource::Base.connection.auth_type = :bearer
  ::ActiveResource::Base.connection.bearer_token = ENV.fetch('TANOSHIMU_TOKEN') { 'demo' }
end

require_relative 'tanoshimu/version'
require_relative 'tanoshimu/show'
