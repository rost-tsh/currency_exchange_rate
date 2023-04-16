# frozen_string_literal: true

RSpec.describe CurrencyExchangeRate::Client do
  describe '#getdata_and_conxert_in_rub' do
    # Здесь будет набор тестов для этого метода
    it 'get_data and get_in_rub' do
      data = {
        Date: '2023-04-15T11: 30: 00+03: 00',
        PreviousDate: '2023-04-14T11: 30: 00+03: 00',
        PreviousURL: '//www.cbr-xml-daily.ru/archive/2023/04/14/daily_json.js',
        Timestamp: '2023-04-16T13: 00: 00+03: 00',
        Valute: {AUD: {ID: 'R01010', NumCode: '036', CharCode: 'AUD', Nominal: 1, Name: 'Австралийский доллар', Value: 55.2845, Previous: 54.731},
                 AZN: {ID: 'R01020A', NumCode: '944', CharCode: 'AZN', Nominal: 1,
                       Name: 'Азербайджанский манат', Value: 47.9438, Previous: 48.0446},
                 GBP: {ID: 'R01035', NumCode: '826', CharCode: 'GBP', Nominal: 1,
                       Name: 'Фунт стерлингов Соединенного королевства', Value: 101.9621, Previous: 101.8171},
                 AMD: {ID: 'R01060', NumCode: '051', CharCode: 'AMD', Nominal: 100,
                       Name: 'Армянских драмов', Value: 20.9955, Previous: 21.0521},
                 BYN: {ID: 'R01090B', NumCode: '933', CharCode: 'BYN', Nominal: 1,
                       Name: 'Белорусский рубль', Value: 27.7642, Previous: 27.7422},
                 BGN: {ID: 'R01100', NumCode: '975', CharCode: 'BGN', Nominal: 1, Name: 'Болгарский лев',
                       Value: 45.9025, Previous: 45.6111},
                 BRL: {ID: 'R01115', NumCode: '986', CharCode: 'BRL', Nominal: 1, Name: 'Бразильский реал',
                       Value: 16.6017, Previous: 16.5025},
                 HUF: {ID: 'R01135', NumCode: '348', CharCode: 'HUF', Nominal: 100,
                       Name: 'Венгерских форинтов', Value: 24.1109, Previous: 23.9821},
                 VND: {ID: 'R01150', NumCode: '704', CharCode: 'VND', Nominal: 10_000,
                       Name: 'Вьетнамских донгов', Value: 34.5534, Previous: 34.5996},
                 HKD: {ID: 'R01200', NumCode: '344', CharCode: 'HKD', Nominal: 1,
                       Name: 'Гонконгский доллар', Value: 10.3993, Previous: 10.4212},
                 GEL: {ID: 'R01210', NumCode: '981', CharCode: 'GEL', Nominal: 1, Name: 'Грузинский лари',
                       Value: 32.3059, Previous: 32.3328},
                 DKK: {ID: 'R01215', NumCode: '208', CharCode: 'DKK', Nominal: 1, Name: 'Датская крона',
                       Value: 12.0492, Previous: 11.9731},
                 AED: {ID: 'R01230', NumCode: '784', CharCode: 'AED', Nominal: 1, Name: 'Дирхам ОАЭ',
                       Value: 22.1944, Previous: 22.2398},
                 USD: {ID: 'R01235', NumCode: '840', CharCode: 'USD', Nominal: 1, Name: 'Доллар США',
                       Value: 81.5045, Previous: 81.6758},
                 EUR: {ID: 'R01239', NumCode: '978', CharCode: 'EUR', Nominal: 1, Name: 'Евро',
                       Value: 90.1637, Previous: 90.0035},
                 EGP: {ID: 'R01240', NumCode: '818', CharCode: 'EGP', Nominal: 10,
                       Name: 'Египетских фунтов', Value: 26.3811, Previous: 26.4366},
                 INR: {ID: 'R01270', NumCode: '356', CharCode: 'INR', Nominal: 100, Name: 'Индийских рупий',
                       Value: 99.4257, Previous: 99.6346},
                 IDR: {ID: 'R01280', NumCode: '360', CharCode: 'IDR', Nominal: 10_000,
                       Name: 'Индонезийских рупий', Value: 55.1004, Previous: 54.9413},
                 KZT: {ID: 'R01335', NumCode: '398', CharCode: 'KZT', Nominal: 100,
                       Name: 'Казахстанских тенге', Value: 18.1177, Previous: 18.0312},
                 CAD: {ID: 'R01350', NumCode: '124', CharCode: 'CAD', Nominal: 1, Name: 'Канадский доллар',
                       Value: 61.0109, Previous: 60.739},
                 QAR: {ID: 'R01355', NumCode: '634', CharCode: 'QAR', Nominal: 1, Name: 'Катарский риал',
                       Value: 22.3913, Previous: 22.4384},
                 KGS: {ID: 'R01370', NumCode: '417', CharCode: 'KGS', Nominal: 100,
                       Name: 'Киргизских сомов', Value: 93.1267, Previous: 93.3291},
                 CNY: {ID: 'R01375', NumCode: '156', CharCode: 'CNY', Nominal: 1, Name: 'Китайский юань',
                       Value: 11.8803, Previous: 11.8566},
                 MDL: {ID: 'R01500', NumCode: '498', CharCode: 'MDL', Nominal: 10, Name: 'Молдавских леев',
                       Value: 45.2398, Previous: 45.2157},
                 NZD: {ID: 'R01530', NumCode: '554', CharCode: 'NZD', Nominal: 1,
                       Name: 'Новозеландский доллар', Value: 51.4619, Previous: 50.7452},
                 NOK: {ID: 'R01535', NumCode: '578', CharCode: 'NOK', Nominal: 10, Name: 'Норвежских крон',
                       Value: 79.0753, Previous: 78.5216},
                 PLN: {ID: 'R01565', NumCode: '985', CharCode: 'PLN', Nominal: 1, Name: 'Польский злотый',
                       Value: 19.4081, Previous: 19.4267},
                 RON: {ID: 'R01585F', NumCode: '946', CharCode: 'RON', Nominal: 1, Name: 'Румынский лей',
                       Value: 18.1751, Previous: 18.2133},
                 XDR: {ID: 'R01589', NumCode: '960', CharCode: 'XDR', Nominal: 1,
                       Name: 'СДР (специальные права заимствования)', Value: 110.1664, Previous: 110.0279},
                 SGD: {ID: 'R01625', NumCode: '702', CharCode: 'SGD', Nominal: 1,
                       Name: 'Сингапурский доллар', Value: 61.5546, Previous: 61.5585},
                 TJS: {ID: 'R01670', NumCode: '972', CharCode: 'TJS', Nominal: 10,
                       Name: 'Таджикских сомони', Value: 74.6809, Previous: 74.8365},
                 THB: {ID: 'R01675', NumCode: '764', CharCode: 'THB', Nominal: 10,
                       Name: 'Таиландских батов', Value: 23.8168, Previous: 23.8669},
                 TRY: {ID: 'R01700J', NumCode: '949', CharCode: 'TRY', Nominal: 10, Name: 'Турецких лир',
                       Value: 42.177, Previous: 42.3061},
                 TMT: {ID: 'R01710A', NumCode: '934', CharCode: 'TMT', Nominal: 1,
                       Name: 'Новый туркменский манат', Value: 23.287, Previous: 23.3359},
                 UZS: {ID: 'R01717', NumCode: '860', CharCode: 'UZS', Nominal: 10_000,
                       Name: 'Узбекских сумов', Value: 71.3637, Previous: 71.4568},
                 UAH: {ID: 'R01720', NumCode: '980', CharCode: 'UAH', Nominal: 10,
                       Name: 'Украинских гривен', Value: 22.0688, Previous: 22.1166},
                 CZK: {ID: 'R01760', NumCode: '203', CharCode: 'CZK', Nominal: 10, Name: 'Чешских крон',
                       Value: 38.5765, Previous: 38.0968},
                 SEK: {ID: 'R01770', NumCode: '752', CharCode: 'SEK', Nominal: 10, Name: 'Шведских крон',
                       Value: 79.5112, Previous: 78.9726},
                 CHF: {ID: 'R01775', NumCode: '756', CharCode: 'CHF', Nominal: 1, Name: 'Швейцарский франк',
                       Value: 91.7637, Previous: 91.6162},
                 RSD: {ID: 'R01805F', NumCode: '941', CharCode: 'RSD', Nominal: 100,
                       Name: 'Сербских динаров', Value: 76.3628, Previous: 76.5233},
                 ZAR: {ID: 'R01810', NumCode: '710', CharCode: 'ZAR', Nominal: 10,
                       Name: 'Южноафриканских рэндов', Value: 44.998, Previous: 44.7291},
                 KRW: {ID: 'R01815', NumCode: '410', CharCode: 'KRW', Nominal: 1000,
                       Name: 'Вон Республики Корея', Value: 62.7489, Previous: 62.3289},
                 JPY: {ID: 'R01820', NumCode: '392', CharCode: 'JPY', Nominal: 100, Name: 'Японских иен',
                       Value: 61.5268, Previous: 61.309}}
      }
      data1 = JSON.dump(data)

      stub_request(:get, 'https://www.cbr-xml-daily.ru/daily_json.js').
        with(
          headers: {
            'Accept' => '*/*',
            'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent' => 'Faraday v2.7.4'
          }
        ).
        to_return(status: 200, body: data1)

      get_datas = test_client.get_data('daily_json.js')
      expect(JSON.dump(get_datas)).to eq(data1)


      get_in_rub = test_client.convert_in_rub(10, 'AMD')
      expect(get_in_rub).to eq(get_datas['Valute']['AMD']['Value'] / get_datas['Valute']['AMD']['Nominal'] * 10)
    end
  end

  describe '#convert_from_rub' do
    # Здесь будет набор тестов для этого метода
    it 'get_data and get_from_rub' do
      data = {disclaimer: 'https://www.cbr-xml-daily.ru/#terms',
              date: '2023-04-15',
              timestamp: 1_681_506_000,
              base: 'RUB',
              rates:
                {AUD: 0.01808825,
                 AZN: 0.02085775,
                 GBP: 0.00980756575,
                 AMD: 4.762925, BYN: 0.0360176,
                 BGN: 0.0217853, BRL: 0.060234795,
                 HUF: 4.14750175, VND: 289.40712057,
                 HKD: 0.09616, GEL: 0.030954098,
                 DKK: 0.082993, AED: 0.0450564,
                 USD: 0.01226926, EUR: 0.0110909379,
                 EGP: 0.379059, INR: 1.005776,
                 IDR: 181.4868857576, KZT: 5.519464, CAD: 0.0163905,
                 QAR: 0.0446602, KGS: 1.0738059, CNY: 0.0841729586,
                 MDL: 0.221044, NZD: 0.01943185, NOK: 0.1264617,
                 PLN: 0.05152487879, RON: 0.0550203, XDR: 0.0090771778,
                 SGD: 0.01624573955, TJS: 0.133903, THB: 0.419871687,
                 TRY: 0.237096, TMT: 0.042942, UZS: 140.12726358,
                 UAH: 0.453128, CZK: 0.259225, SEK: 0.1257684,
                 CHF: 0.010897555, RSD: 1.309538, ZAR: 0.222232,
                 KRW: 15.936534, JPY: 1.62530799587}}
      data1 = JSON.dump(data)

      stub_request(:get, 'https://www.cbr-xml-daily.ru/latest.js').
        with(
          headers: {
            'Accept' => '*/*',
            'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent' => 'Faraday v2.7.4'
          }
        ).
        to_return(status: 200, body: data1)

      get_datas = test_client.get_data('latest.js')
      expect(JSON.dump(get_datas)).to eq(data1)


      get_from_rub = test_client.convert_from_rub(10, 'USD')
      expect(get_from_rub).to eq(get_datas['rates']['USD'] * 10)
    end
  end

  describe '#show_currency' do
    # Здесь будет набор тестов для этого метода
    it 'show_currency' do
      data = {
        Date: '2023-04-15T11: 30: 00+03: 00',
        PreviousDate: '2023-04-14T11: 30: 00+03: 00',
        PreviousURL: '//www.cbr-xml-daily.ru/archive/2023/04/14/daily_json.js',
        Timestamp: '2023-04-16T13: 00: 00+03: 00',
        Valute: {AUD: {ID: 'R01010', NumCode: '036', CharCode: 'AUD', Nominal: 1, Name: 'Австралийский доллар', Value: 55.2845, Previous: 54.731},
                 AZN: {ID: 'R01020A', NumCode: '944', CharCode: 'AZN', Nominal: 1,
                       Name: 'Азербайджанский манат', Value: 47.9438, Previous: 48.0446},
                 GBP: {ID: 'R01035', NumCode: '826', CharCode: 'GBP', Nominal: 1,
                       Name: 'Фунт стерлингов Соединенного королевства', Value: 101.9621, Previous: 101.8171},
                 AMD: {ID: 'R01060', NumCode: '051', CharCode: 'AMD', Nominal: 100,
                       Name: 'Армянских драмов', Value: 20.9955, Previous: 21.0521},
                 BYN: {ID: 'R01090B', NumCode: '933', CharCode: 'BYN', Nominal: 1,
                       Name: 'Белорусский рубль', Value: 27.7642, Previous: 27.7422},
                 BGN: {ID: 'R01100', NumCode: '975', CharCode: 'BGN', Nominal: 1, Name: 'Болгарский лев',
                       Value: 45.9025, Previous: 45.6111},
                 BRL: {ID: 'R01115', NumCode: '986', CharCode: 'BRL', Nominal: 1,
                       Name: 'Бразильский реал', Value: 16.6017, Previous: 16.5025},
                 HUF: {ID: 'R01135', NumCode: '348', CharCode: 'HUF', Nominal: 100,
                       Name: 'Венгерских форинтов', Value: 24.1109, Previous: 23.9821},
                 VND: {ID: 'R01150', NumCode: '704', CharCode: 'VND', Nominal: 10_000,
                       Name: 'Вьетнамских донгов', Value: 34.5534, Previous: 34.5996},
                 HKD: {ID: 'R01200', NumCode: '344', CharCode: 'HKD', Nominal: 1,
                       Name: 'Гонконгский доллар', Value: 10.3993, Previous: 10.4212},
                 GEL: {ID: 'R01210', NumCode: '981', CharCode: 'GEL', Nominal: 1,
                       Name: 'Грузинский лари', Value: 32.3059, Previous: 32.3328},
                 DKK: {ID: 'R01215', NumCode: '208', CharCode: 'DKK', Nominal: 1, Name: 'Датская крона',
                       Value: 12.0492, Previous: 11.9731},
                 AED: {ID: 'R01230', NumCode: '784', CharCode: 'AED', Nominal: 1, Name: 'Дирхам ОАЭ',
                       Value: 22.1944, Previous: 22.2398},
                 USD: {ID: 'R01235', NumCode: '840', CharCode: 'USD', Nominal: 1, Name: 'Доллар США',
                       Value: 81.5045, Previous: 81.6758},
                 EUR: {ID: 'R01239', NumCode: '978', CharCode: 'EUR', Nominal: 1, Name: 'Евро',
                       Value: 90.1637, Previous: 90.0035},
                 EGP: {ID: 'R01240', NumCode: '818', CharCode: 'EGP', Nominal: 10,
                       Name: 'Египетских фунтов', Value: 26.3811, Previous: 26.4366},
                 INR: {ID: 'R01270', NumCode: '356', CharCode: 'INR', Nominal: 100,
                       Name: 'Индийских рупий', Value: 99.4257, Previous: 99.6346},
                 IDR: {ID: 'R01280', NumCode: '360', CharCode: 'IDR', Nominal: 10_000,
                       Name: 'Индонезийских рупий', Value: 55.1004, Previous: 54.9413},
                 KZT: {ID: 'R01335', NumCode: '398', CharCode: 'KZT', Nominal: 100,
                       Name: 'Казахстанских тенге', Value: 18.1177, Previous: 18.0312},
                 CAD: {ID: 'R01350', NumCode: '124', CharCode: 'CAD', Nominal: 1,
                       Name: 'Канадский доллар', Value: 61.0109, Previous: 60.739},
                 QAR: {ID: 'R01355', NumCode: '634', CharCode: 'QAR', Nominal: 1, Name: 'Катарский риал',
                       Value: 22.3913, Previous: 22.4384},
                 KGS: {ID: 'R01370', NumCode: '417', CharCode: 'KGS', Nominal: 100,
                       Name: 'Киргизских сомов', Value: 93.1267, Previous: 93.3291},
                 CNY: {ID: 'R01375', NumCode: '156', CharCode: 'CNY', Nominal: 1, Name: 'Китайский юань',
                       Value: 11.8803, Previous: 11.8566},
                 MDL: {ID: 'R01500', NumCode: '498', CharCode: 'MDL', Nominal: 10,
                       Name: 'Молдавских леев', Value: 45.2398, Previous: 45.2157},
                 NZD: {ID: 'R01530', NumCode: '554', CharCode: 'NZD', Nominal: 1,
                       Name: 'Новозеландский доллар', Value: 51.4619, Previous: 50.7452},
                 NOK: {ID: 'R01535', NumCode: '578', CharCode: 'NOK', Nominal: 10,
                       Name: 'Норвежских крон', Value: 79.0753, Previous: 78.5216},
                 PLN: {ID: 'R01565', NumCode: '985', CharCode: 'PLN', Nominal: 1,
                       Name: 'Польский злотый', Value: 19.4081, Previous: 19.4267},
                 RON: {ID: 'R01585F', NumCode: '946', CharCode: 'RON', Nominal: 1, Name: 'Румынский лей',
                       Value: 18.1751, Previous: 18.2133},
                 XDR: {ID: 'R01589', NumCode: '960', CharCode: 'XDR', Nominal: 1,
                       Name: 'СДР (специальные права заимствования)', Value: 110.1664, Previous: 110.0279},
                 SGD: {ID: 'R01625', NumCode: '702', CharCode: 'SGD', Nominal: 1,
                       Name: 'Сингапурский доллар', Value: 61.5546, Previous: 61.5585},
                 TJS: {ID: 'R01670', NumCode: '972', CharCode: 'TJS', Nominal: 10,
                       Name: 'Таджикских сомони', Value: 74.6809, Previous: 74.8365},
                 THB: {ID: 'R01675', NumCode: '764', CharCode: 'THB', Nominal: 10,
                       Name: 'Таиландских батов', Value: 23.8168, Previous: 23.8669},
                 TRY: {ID: 'R01700J', NumCode: '949', CharCode: 'TRY', Nominal: 10, Name: 'Турецких лир',
                       Value: 42.177, Previous: 42.3061},
                 TMT: {ID: 'R01710A', NumCode: '934', CharCode: 'TMT', Nominal: 1,
                       Name: 'Новый туркменский манат', Value: 23.287, Previous: 23.3359},
                 UZS: {ID: 'R01717', NumCode: '860', CharCode: 'UZS', Nominal: 10_000,
                       Name: 'Узбекских сумов', Value: 71.3637, Previous: 71.4568},
                 UAH: {ID: 'R01720', NumCode: '980', CharCode: 'UAH', Nominal: 10,
                       Name: 'Украинских гривен', Value: 22.0688, Previous: 22.1166},
                 CZK: {ID: 'R01760', NumCode: '203', CharCode: 'CZK', Nominal: 10, Name: 'Чешских крон',
                       Value: 38.5765, Previous: 38.0968},
                 SEK: {ID: 'R01770', NumCode: '752', CharCode: 'SEK', Nominal: 10, Name: 'Шведских крон',
                       Value: 79.5112, Previous: 78.9726},
                 CHF: {ID: 'R01775', NumCode: '756', CharCode: 'CHF', Nominal: 1,
                       Name: 'Швейцарский франк', Value: 91.7637, Previous: 91.6162},
                 RSD: {ID: 'R01805F', NumCode: '941', CharCode: 'RSD', Nominal: 100,
                       Name: 'Сербских динаров', Value: 76.3628, Previous: 76.5233},
                 ZAR: {ID: 'R01810', NumCode: '710', CharCode: 'ZAR', Nominal: 10,
                       Name: 'Южноафриканских рэндов', Value: 44.998, Previous: 44.7291},
                 KRW: {ID: 'R01815', NumCode: '410', CharCode: 'KRW', Nominal: 1000,
                       Name: 'Вон Республики Корея', Value: 62.7489, Previous: 62.3289},
                 JPY: {ID: 'R01820', NumCode: '392', CharCode: 'JPY', Nominal: 100, Name: 'Японских иен',
                       Value: 61.5268, Previous: 61.309}}
      }
      data1 = JSON.dump(data)

      stub_request(:get, 'https://www.cbr-xml-daily.ru/daily_json.js').
        with(
          headers: {
            'Accept' => '*/*',
            'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent' => 'Faraday v2.7.4'
          }
        ).
        to_return(status: 200, body: data1)

      get_datas = test_client.get_data('daily_json.js')
      expect(JSON.dump(get_datas)).to eq(data1)

      show_my_currency = test_client.show_currency
      temps = ''
      get_datas['Valute'].each do |elem|
        temps += "Номинал: #{elem[1]['Nominal']}; Код: #{elem[1]['CharCode']}; Наименование: #{elem[1]['Name']}; Курс: #{elem[1]['Value']}"
      end
      expect(show_my_currency).to eq(temps)
    end
  end
end
