# frozen_string_literal: true

require 'rack/test'
require 'json'
require './app/api'

module ExpenseTracker
  RSpec.describe 'Expense Tracker API' do
    include Rack::Test::Methods

    def app
      ExpenseTracker::API.new
    end

    it 'records submitted expenses' do
      coffee = {
        'payee' => 'Starbucks',
        'amount' => 5.75,
        'date' => '2021-11-18'
      }

      post '/expenses', JSON.generate(coffee)
    end
  end
end
