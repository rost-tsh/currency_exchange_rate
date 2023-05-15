# currency_exchange_rate
### This library is designed to check the exchange rate at the rate of the Central Bank of the Russian Federations.

# How to install

### IMPORTANT !
### For install gem You need ruby version '>= 2.7.0'

* $ cd "PATH to project"
* $ gem build currency_exchange_rate.gemspec
* $ gem install currency_exchange_rate-0.0.2.gem

# gem methods

### For start using methods

* $ irb
* $ require 'currency_exchange_rate'
* $ client = CurrencyExchangeRate.client

## Now You can use methods

1) $ client.show_currency()

```
def show_currency
      data = get_data('daily_json.js')
      str = ''
      data['Valute'].each do |elem|
        str += "Номинал: #{elem[1]['Nominal']}; Код: #{elem[1]['CharCode']}; Наименование: #{elem[1]['Name']}; Курс: #{elem[1]['Value']}"
        puts "Номинал: #{elem[1]['Nominal']}; Код: #{elem[1]['CharCode']}; Наименование: #{elem[1]['Name']}; Курс: #{elem[1]['Value']}"
      end
      str
    end
```
show_currency() shows information about the current exchange rate according to the Central Bank of the Russian Federation

### Example: str_res = client.show_currency()
2) $ client.convert_from_rub(sum, type)

```
def convert_from_rub(sum, type)
      raise if sum.negative?
      data = get_data('latest.js')
      type.upcase!
      sum * data['rates'][type]
    rescue StandardError
      puts 'Please сheck the correctness of the amount or name of the currency'
    end
```

convert_from_rub(sum, type) converts from rubles to the selected currency type

sum - amount of rubles; type - code of the currency to be converted

### Example: res_from_rub = client.convert_from_rub(1000, 'USD')
3) $ client.convert_in_rub(sum, type)

```
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
```
convert_in_rub(sum, type) converts the amount of the selected currency into rubles

sum - amount of the selected currency; type - code of the currency from which to convert

### Example: res_in_rub = client.convert_in_rub(10, 'USD')
4) $ client.get_data(address)
```
def get_data(address)
      con = Faraday.new url: MAIN_ADDRESS
      res = con.get(address)
      JSON.parse res.body
    end
```
get_data(address) allows you to get data from json by adding to 'https://www.cbr-xml-daily.ru /' 'address'

### Example1: res_data1 = client.get_data('daily_json.js')
### Example2: res_data2 = client.get_data('latest.js')

### Author: Shcherbakov Rostislav
