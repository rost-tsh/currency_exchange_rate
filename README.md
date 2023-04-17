# currency_exchange_rate
### This library is designed to check the exchange rate at the rate of the Central Bank of the Russian Federations.

# How to install
 
* $ cd "PATH to project"
* $ gem build currency_exchange_rate.gemspec
* $ gem install currency_exchange_rate-"VERSION".gem

# gem methods

### For start using methods

* $ irb
* $ require 'currency_exchange_rate'
* $ client = CurrencyExchangeRate.client

## Now You can use methods

1) $ client.show_currency()

    show_currency() shows information about the current exchange rate according to the Central Bank of the Russian Federation

   ### Example: str_res = client.show_currency()
2) $ client.convert_from_rub(sum, type)

    convert_from_rub(sum, type) converts from rubles to the selected currency type

    sum - amount of rubles; type - code of the currency to be converted

    ### Example: res_from_rub = client.convert_from_rub(1000, 'USD')
3) $ client.convert_in_rub(sum, type)

   convert_in_rub(sum, type) converts the amount of the selected currency into rubles

   sum - amount of the selected currency; type - code of the currency from which to convert

   ### Example: res_in_rub = client.convert_in_rub(10, 'USD')
4) $ client.get_data(address)

   get_data(address) allows you to get data from json by adding to 'https://www.cbr-xml-daily.ru /' 'address'

   ### Example: res_data1 = client.get_data('daily_json.js')
   ### Example: res_data2 = client.get_data('latest.js')

### Author: Shcherbakov Rostislav