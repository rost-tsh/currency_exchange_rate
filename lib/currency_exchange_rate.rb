# frozen_string_literal: true

require 'faraday'
require 'json'
require 'zeitwerk'

# Подключаем все файлы в решении
loader = Zeitwerk::Loader.for_gem
loader.setup

module CurrencyExchangeRate
  def self.client
    CurrencyExchangeRate::Client.new
  end
end
