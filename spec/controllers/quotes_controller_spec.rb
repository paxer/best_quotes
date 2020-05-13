require "rack/test"
require_relative 'app/models/quotes'

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

  context '#quote_1' do
    it 'returns html response' do
      get '/quotes/quote_1'
      expect(last_response.body).to include('Submitted by Gandalf')
    end
  end

  context '#show' do
    it 'returns html response' do
      get '/quotes/show?id=1'
      expect(last_response.body).to include('Submitted by Gandalf')
    end
  end

  context '#show_from_db' do
    it 'returns html response' do
      quote = Quotes.create 'author' => 'Gandalf', 'quote' => 'Many that live deserve death. And some that die deserve life. Can you give it to them? Then do not be too eager to deal out death in judgement.'
      get "/quotes/show_from_db?id=#{quote['id']}"
      expect(last_response.body).to include('Many that live deserve death')
    end
  end
end