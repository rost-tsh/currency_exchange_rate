# frozen_string_literal: true

require File.expand_path('lib/currency_exchange_rate/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'currency_exchange_rate'
  spec.version               = CurrencyExchangeRate::VERSION
  spec.authors               = ['Rostislav Shcherbakov']
  spec.email                 = ['rshcherbakov@sfedu.ru']
  spec.summary               = 'Simple library for work with currency exchange rate.'
  spec.description           = 'This library is designed to check the exchange rate at the rate of the Central Bank of the Russian Federations.'
  spec.homepage              = 'https://github.com/rost-tsh/currency_exchange_rate'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'

  # Массив требуемых файлов
  spec.files = Dir['lib/**/*.rb', 'README.md','LICENSE.md','CHANGELOG.md',
                   'currency_exchange_rate.gemspec',
                   'Gemfile']

  spec.extra_rdoc_files = ['README.md']
  spec.require_paths = ['lib']

  # подключаем библиотеку для отправки запроса
  spec.add_dependency 'faraday', '~> 2.6'
  # Для подключения всех файлов в решении
  spec.add_dependency 'zeitwerk', '~> 2.4'

  spec.add_development_dependency 'rspec', '~> 3.12'
  # Для измерения покрытия кода
  spec.add_development_dependency 'simplecov', '~> 0.16'
  # для создание тестов с ложныой отправкой запроса
  spec.add_development_dependency 'webmock', '~> 3.14'
  # Для проверки стиля кода
  spec.add_development_dependency 'rubocop', '~> 1.6'
  # Проверка производительности
  spec.add_development_dependency 'rubocop-performance', '~> 1.5'
  # Для проверки в тестах
  spec.add_development_dependency 'rubocop-rspec', '~> 2.0'

  # требование двухфакторной аутентификации на RubyGems
  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end
