require "rack/test"

RSpec.describe QuotesController do
  include Rack::Test::Methods

  let(:app) { BestQuotes::Application.new }

  context '#a_quote' do
    it 'returns a text response' do
      get '/quotes/a_quote'
      expect(last_response.body).to include(' All we have to decide is what to do with the time that is given us.')
      expect(last_response.body).to include('So do I, said Gan')
    end
  end
end