# frozen_string_literal: true

require File.expand_path('version', __dir__)
module CurrencyExchangeRate
  class Client
    def show_currency
      data = get_data('daily_json.js')
      str = ''
      data['Valute'].each do |elem|
        str += "Номинал: #{elem[1]['Nominal']}; Код: #{elem[1]['CharCode']}; Наименование: #{elem[1]['Name']}; Курс: #{elem[1]['Value']}"
        puts "Номинал: #{elem[1]['Nominal']}; Код: #{elem[1]['CharCode']}; Наименование: #{elem[1]['Name']}; Курс: #{elem[1]['Value']}"
      end
      str
    end

    def convert_from_rub(sum, type)
      raise if sum.negative?
      data = get_data('latest.js')
      type.upcase!
      sum * data['rates'][type]
    rescue StandardError
      puts 'Please сheck the correctness of the amount or name of the currency'
    end

    def convert_in_rub(sum, type)
      raise if sum.negative?
      data = get_data('daily_json.js')
      type.upcase!
      sum * data['Valute'][type]['Value'] / data['Valute'][type]['Nominal']
    rescue ZeroDivisionError
      puts 'zero division!'
    rescue StandardError
      puts 'Please сheck the correctness of the amount or name of the currency'
    end

    def get_data(address)
      con = Faraday.new url: MAIN_ADDRESS
      res = con.get(address)
      JSON.parse res.body
    end
  end
end
