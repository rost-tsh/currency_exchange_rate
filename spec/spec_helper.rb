# frozen_string_literal: true

require 'simplecov'
require 'webmock/rspec'

SimpleCov.start do
  add_filter 'spec/'
end

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each { |f| require f }

require 'currency_exchange_rate'

RSpec.configure do |c|
  c.include TestClient
end
