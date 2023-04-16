# frozen_string_literal: true

RSpec.describe CurrencyExchangeRate do
  specify '.client' do
    expect(
      described_class.client
    ).to be_an_instance_of(CurrencyExchangeRate::Client)
  end
end
